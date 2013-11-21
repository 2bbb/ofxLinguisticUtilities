//
//  ofxLinguisticTaggingUtility.mm
//  ofxLinguisticUtilities
//
//  Created by ISHII Tsuubito on 2013/11/21.
//
//

#include "ofxLinguisticTaggingUtility.h"

using namespace ofxLinguistic;

Orthography ofxLinguistic::detectLanguageDetail(string _text) {
    NSArray *schemes = [NSLinguisticTagger availableTagSchemesForLanguage:@""];
    NSLinguisticTagger *tagger = [[NSLinguisticTagger alloc] initWithTagSchemes:schemes
                                                                        options:0];
    NSString *text = convert(_text);
    [tagger setString:text];
    [tagger enumerateTagsInRange:NSMakeRange(0, [text length])
                          scheme:[schemes objectAtIndex:0]
                         options:0
                      usingBlock:^(NSString *, NSRange, NSRange, BOOL *) {}];
    
    NSOrthography *orthography = [tagger orthographyAtIndex:0 effectiveRange:nil];
    
    return (Orthography){
        .languageCodes = convertToVectorFromNSArray([orthography allLanguages], convertFromNSStringToStringBlocks),
        .scriptTypes = convertToVectorFromNSArray([orthography allScripts], convertFromNSStringToStringBlocks),
        .dominantLanguage = convert([orthography dominantLanguage]),
        .dominantScript = convert([orthography dominantScript])
    };
}

string ofxLinguistic::detectLanguageCode(string _text) {
    NSString *text = convert(_text);
    NSString *token = (NSString *)CFStringTokenizerCopyBestStringLanguage((CFStringRef)text, CFRangeMake(0, MIN(text.length, 100)));
    return convert(token);
}
