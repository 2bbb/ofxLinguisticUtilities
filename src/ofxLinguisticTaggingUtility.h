//
//  ofxLinguisticTaggingUtility.h
//  ofxLinguisticUtilities
//
//  Created by 2bit Tsuubito on 2013/11/21.
//
//

#ifndef __ofxLinguisticTaggingUtility__
#define __ofxLinguisticTaggingUtility__

#include "ofMain.h"
#include "ofxObjective-C++Utility.h"
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>

#include "ofxLinguisticUtilitiesConstant.h"

namespace ofxLinguistic {
    typedef struct {
        vector<string> languageCodes;
        vector<string> scriptTypes;
        string dominantLanguage;
        string dominantScript;
    } Orthography;
    
    Orthography getLanguageDetail(string text);
    string getLanguageCode(string text);
};

#endif /* defined(__ofxLinguisticTaggingUtility__) */
