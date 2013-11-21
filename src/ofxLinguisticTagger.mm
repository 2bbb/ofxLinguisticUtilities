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

TagResult Tagger::tagging(string _text, string language, string scheme) {
    NSLinguisticTaggerOptions options = TaggerOption::OmitWhitespace | TaggerOption::OmitPunctuation | TaggerOption::JoinNames;
    NSArray *schemes = [NSLinguisticTagger availableTagSchemesForLanguage:convert(language)];
    NSLinguisticTagger *tagger = [[NSLinguisticTagger alloc] initWithTagSchemes:schemes
                                                                        options:options];
    NSString *text = convert(_text);
    [tagger setString:text];
    
    __block TagResult result(_text, language, scheme);
    [tagger enumerateTagsInRange:NSMakeRange(0, [text length])
                          scheme:convert(scheme)
                         options:options
                      usingBlock:^(NSString *tag, NSRange tokenRange, NSRange sentenceRange, BOOL *stop) {
                          NSString *token = [text substringWithRange:tokenRange];
                          result.addTag(tag, token, tokenRange.location, tokenRange.length, sentenceRange.location, sentenceRange.length);
                      }];
    
    return result;
}