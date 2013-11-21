//
//  ofxStringTransform.mm
//  ofxLinguisticUtilities
//
//  Created by ISHII 2bit on 2013/11/20.
//
//

#include "ofxStringTransform.h"
#include "ofxObjective-C++Utility.h"

#import <CoreFoundation/CoreFoundation.h>

using namespace ofxLinguistic::TransformType;
string ofxStringTransform::transform(string text, string transformType, bool bReverse) {
    CFMutableStringRef resultRef = (CFMutableStringRef)[NSMutableString stringWithString:convert(text)];
    CFStringRef type = (CFStringRef)convert(transformType);
    if(CFStringTransform(resultRef, NULL, type, (BOOL)bReverse)) {
        return convert((NSString *)resultRef);
    } else {
        ofLogError("ofxLinguisticTransform") << text << " can't transform by " << transformType << "(we'll return empty string)";
        return "";
    }
}

string ofxStringTransform::getUnicodeName(string text) {
    return transform(text, ToUnicodeName);
}

string ofxStringTransform::getXMLHex(string text) {
    return transform(text, ToXMLHex);
}