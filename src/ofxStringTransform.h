//
//  ofxStringTransform.h
//  ofxLinguisticUtilities
//
//  Created by ISHII 2bit on 2013/11/20.
//
//

#ifndef __ofxLinguisticTaggerExample__ofxStringTransform__
#define __ofxLinguisticTaggerExample__ofxStringTransform__

#include "ofMain.h"

#include "ofxLinguisticUtilitiesConstant.h"

namespace ofxStringTransform {
    using namespace ofxLinguistic;
    string transform(string text, string type = TransformType::ToLatin, bool bReverse = false);
    string getUnicodeName(string text);
    string getXMLHex(string text);
};

#endif /* defined(__ofxLinguisticTaggerExample__ofxStringTransform__) */
