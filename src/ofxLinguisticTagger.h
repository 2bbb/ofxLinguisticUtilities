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
#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

#include "ofxLinguisticTaggingUtility.h"
#include "ofxLinguisticUtilitiesConstant.h"

namespace ofxLinguistic {
    typedef struct {
        string tag;
        string token;
        int tokenBegin;
        int tokenLength;
        int sentenceBegin;
        int sentenceLength;
    } Tag;
    
    class TagResult {
    public:
        TagResult(string &text, string &language, string &scheme) {
            this->text     = text;
            this->language = language;
            this->scheme   = scheme;
        }
        
        const int size() const {
            return tags.size();
        }
        
        const Tag &operator [](int n) const {
            return tags[n];
        }
        
        void addTag(NSString *tag, NSString *token, int tokenBegin, int tokenLength, int sentenceBegin, int sentenceLength) {
            tags.push_back((Tag) {
                .tag    = convert(tag),
                .token  = convert(token),
                .tokenBegin  = tokenBegin,
                .tokenLength = tokenLength,
                .sentenceBegin = sentenceBegin,
                .sentenceLength = sentenceLength
            });
        }
        
        const vector<Tag> &getTags() const {
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
        vector<Tag> tags;
        string text;
        string language;
        string scheme;
    };

    class Tagger {
    public:
        static vector<string> availableTagSchemes(string language);
        static TagResult tagging(string text);
        static TagResult tagging(string text, string languageCode);
        static TagResult tagging(string text, string languageCode, string tagScheme, int options = TaggerOption::DefaultOption);
        
    private:
    };
}

#endif /* defined(__ofxLinguisticTagger__) */
