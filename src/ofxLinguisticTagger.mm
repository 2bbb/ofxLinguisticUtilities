//
//  ofxLinguisticTagger.mm
//  ofxLinguisticUtilities
//
//  Created by ISHII 2bit on 2013/11/20.
//
//

#include "ofxLinguisticTagger.h"

using namespace ofxLinguistic;

vector<string> Tagger::availableTagSchemes(string language) {
    NSArray *schemes = [NSLinguisticTagger availableTagSchemesForLanguage:convert(language)];
    return convertToVectorFromNSArray(schemes, convertFromNSStringToStringBlocks);
}

TagResult Tagger::tagging(string text) {
    string languageCode = detectLanguageCode(text);
    return tagging(text, languageCode);
}


TagResult Tagger::tagging(string text, string languageCode) {
    NSArray *schemes = [NSLinguisticTagger availableTagSchemesForLanguage:convert(languageCode)];
    string tagScheme = convert((NSString *)[schemes objectAtIndex:0]);
    
    return tagging(text, languageCode, tagScheme);
}

TagResult Tagger::tagging(string _text, string languageCode, string tagScheme, int options) {
    NSArray *schemes = [NSLinguisticTagger availableTagSchemesForLanguage:convert(languageCode)];
    NSLinguisticTagger *tagger = [[NSLinguisticTagger alloc] initWithTagSchemes:schemes
                                                                        options:options];
    NSString *text = convert(_text);
    [tagger setString:text];
    
    __block TagResult result(_text, languageCode, tagScheme);
    [tagger enumerateTagsInRange:NSMakeRange(0, [text length])
                          scheme:convert(tagScheme)
                         options:options
                      usingBlock:^(NSString *tag, NSRange tokenRange, NSRange sentenceRange, BOOL *stop) {
                          NSString *token = [text substringWithRange:tokenRange];
                          result.addTag(tag, token, tokenRange.location, tokenRange.length, sentenceRange.location, sentenceRange.length);
                      }];
    
    return result;
}