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
    int begin;
    int length;
} ofxLinguisticTag;

class ofxLinguisticTagResult {
public:
    ofxLinguisticTagResult(string &text, string &language, string &scheme) {
        this->text     = text;
        this->language = language;
        this->scheme   = scheme;
    }
    
    int size() {
        return tags.size();
    }
    
    ofxLinguisticTag &operator [](int n) {
        return tags[n];
    }
    
    void addTag(NSString *tag, NSString *token, int begin, int length) {
        tags.push_back((ofxLinguisticTag) {
            .tag    = convert(tag),
            .token  = convert(token),
            .begin  = begin,
            .length = length
        });
    }
    
    vector<ofxLinguisticTag> &getTags() {
        return tags;
    }
    
    string &getText() {
        return text;
    }
    
    string &getLanguage() {
        return language;
    }
    
    string &getScheme() {
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
