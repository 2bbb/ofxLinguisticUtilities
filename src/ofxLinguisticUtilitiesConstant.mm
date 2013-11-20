//
//  ofxLinguisticUtilitiesConstant.mm
//  ofxLinguisticUtilities
//
//  Created by ISHII 2bit on 2013/11/20.
//
//

#include "ofxLinguisticUtilitiesConstant.h"

#define CONV_CFSTRING_TO_STRING(str) CFStringGetCStringPtr(str, kCFStringEncodingASCII);

const string ofxStringTransformStripCombiningMarks = CONV_CFSTRING_TO_STRING(kCFStringTransformStripCombiningMarks);
const string ofxStringTransformToLatin = CONV_CFSTRING_TO_STRING(kCFStringTransformToLatin);
const string ofxStringTransformFullwidthHalfwidth = CONV_CFSTRING_TO_STRING(kCFStringTransformFullwidthHalfwidth);
const string ofxStringTransformLatinKatakana = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinKatakana);
const string ofxStringTransformLatinHiragana = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinHiragana);
const string ofxStringTransformHiraganaKatakana = CONV_CFSTRING_TO_STRING(kCFStringTransformHiraganaKatakana);
const string ofxStringTransformMandarinLatin = CONV_CFSTRING_TO_STRING(kCFStringTransformMandarinLatin);
const string ofxStringTransformLatinHangul = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinHangul);
const string ofxStringTransformLatinArabic = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinArabic);
const string ofxStringTransformLatinHebrew = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinHebrew);
const string ofxStringTransformLatinThai = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinThai);
const string ofxStringTransformLatinCyrillic = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinCyrillic);
const string ofxStringTransformLatinGreek = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinGreek);
const string ofxStringTransformToXMLHex = CONV_CFSTRING_TO_STRING(kCFStringTransformToXMLHex);
const string ofxStringTransformToUnicodeName = CONV_CFSTRING_TO_STRING(kCFStringTransformToUnicodeName);
const string ofxStringTransformStripDiacritics = CONV_CFSTRING_TO_STRING(kCFStringTransformStripDiacritics);

#undef CONV_CFSTRING_TO_STRING