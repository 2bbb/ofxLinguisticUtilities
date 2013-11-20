//
//  ofxLinguisticTagger.h
//  ofxLinguisticUtilities
//
//  Created by ISHII 2bit on 2013/11/20.
//
//

#ifndef __ofxLinguisticTagger__
#define __ofxLinguisticTagger__

#include "ofMain.h"
#include "ofxObjective-C++Utility.h"
#import <AppKit/AppKit.h>

typedef struct {
    string tag;
    string token;
    int tokenBegin;
    int tokenLength;
    int sentenceBegin;
    int sentenceLength;
} ofxLinguisticTag;

class ofxLinguisticTagResult {
public:
    ofxLinguisticTagResult(string &text, string &language, string &scheme) {
        this->text     = text;
        this->language = language;
        this->scheme   = scheme;
    }
    
    const int size() const {
        return tags.size();
    }
    
    const ofxLinguisticTag &operator [](int n) const {
        return tags[n];
    }
    
    void addTag(NSString *tag, NSString *token, int tokenBegin, int tokenLength, int sentenceBegin, int sentenceLength) {
        tags.push_back((ofxLinguisticTag) {
            .tag    = convert(tag),
            .token  = convert(token),
            .tokenBegin  = tokenBegin,
            .tokenLength = tokenLength,
            .sentenceBegin = sentenceBegin,
            .sentenceLength = sentenceLength
        });
    }
    
    const vector<ofxLinguisticTag> &getTags() const {
        return tags;
    }
    
    const string &getText() const {
        return text;
    }
    
    const string &getLanguage() const {
        return language;
    }
    
    const string &getScheme() const {
        return scheme;
    }
    
private:
    vector<ofxLinguisticTag> tags;
    string text;
    string language;
    string scheme;
};

class ofxLinguisticTagger {
public:
    static vector<string> availableTagSchemes(string language);
    static ofxLinguisticTagResult tagging(string text, string language = "en", string scheme = convert(NSLinguisticTagSchemeTokenType));
    
//    void setup(string language = "en", string scheme = convert(NSLinguisticTagSchemeTokenType));
//    ofxLinguisticTagResult tagging(string text);
    
private:
};

#endif /* defined(__ofxLinguisticTagger__) */
