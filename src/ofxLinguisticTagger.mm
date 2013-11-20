//
//  ofxLinguisticTagger.mm
//  ofxLinguisticUtilities
//
//  Created by ISHII 2bit on 2013/11/20.
//
//

#include "ofxLinguisticTagger.h"

vector<string> ofxLinguisticTagger::availableTagSchemes(string language) {
    NSArray *schemes = [NSLinguisticTagger availableTagSchemesForLanguage:convert(language)];
    return convertToVectorFromNSArray(schemes, convertFromNSStringToStringBlocks);
}

ofxLinguisticTagResult ofxLinguisticTagger::tagging(string _text, string language, string scheme) {
    NSLinguisticTaggerOptions options = NSLinguisticTaggerOmitWhitespace | NSLinguisticTaggerOmitPunctuation | NSLinguisticTaggerJoinNames;
    NSArray *schemes = [NSLinguisticTagger availableTagSchemesForLanguage:convert(language)];
    NSLinguisticTagger *tagger = [[NSLinguisticTagger alloc] initWithTagSchemes:schemes
                                                                        options:options];
    NSString *text = convert(_text);
    [tagger setString:text];
    
    __block ofxLinguisticTagResult result(_text, language, scheme);
    [tagger enumerateTagsInRange:NSMakeRange(0, [text length])
                          scheme:convert(scheme)
                         options:options
                      usingBlock:^(NSString *tag, NSRange tokenRange, NSRange sentenceRange, BOOL *stop) {
                          NSString *token = [text substringWithRange:tokenRange];
                          result.addTag(tag, token, tokenRange.location, tokenRange.length);
                      }];
    
    return result;
}