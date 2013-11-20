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

string ofxStringTransform::transform(string text, string transformType = ofxStringTransformToLatin, bool bReverse = false) {
    CFMutableStringRef resultRef = (CFMutableStringRef)[NSMutableString stringWithString:convert(text)];
    CFStringRef type = (CFStringRef)convert(transformType);
    if(CFStringTransform(resultRef, NULL, type, (BOOL)bReverse)) {
        return convert((NSString *)resultRef);
    } else {
        ofLogError("ofxLinguisticTransform") << text << " can't transform by " << transformType << "(we'll return empty string)";
        return "";
    }
}