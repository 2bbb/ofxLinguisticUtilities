#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    string taggingString = "Hello, I am a pen in Japan.";
    string taggingLanguage = "en";
    vector<string> schemes = ofxLinguisticTagger::availableTagSchemes(taggingLanguage);
    for(int i = 0; i < schemes.size(); i++) {
        ofLogNotice("main:availableSchemes") << schemes[i];
    }
    ofxLinguisticTagger::tagging(taggingString, taggingLanguage);
    ofxLinguisticTagResult result = ofxLinguisticTagger::tagging(taggingString, taggingLanguage, schemes[6]);
    ofLogNotice("main:Result1") << "\"" << result.getText()<< "\" (" << result.getLanguage() << ", " << result.getScheme() << ")";
    
    for(int i = 0; i < result.size(); i++) {
        ofxLinguisticTag &tag = result[i];
        ofLogNotice("main:Result1") << tag.tag << " : " << tag.token << " (" << tag.begin << ", " << tag.length << ")";
    }
    
    taggingString = "こんにちは、私は日本のペンです。";
    taggingLanguage = "ja";
    schemes = ofxLinguisticTagger::availableTagSchemes(taggingLanguage);
    for(int i = 0; i < schemes.size(); i++) {
        ofLogNotice("main:availableSchemes") << schemes[i];
    }
    
    result = ofxLinguisticTagger::tagging(taggingString, taggingLanguage, schemes[0]);
    ofLogNotice("main:Result2") << "\"" << result.getText()<< "\" (" << result.getLanguage() << ", " << result.getScheme() << ")";
    
    for(int i = 0; i < result.size(); i++) {
        ofxLinguisticTag &tag = result[i];
        ofLogNotice("main:Result2") << tag.tag << " : " << tag.token << " (" << tag.begin << ", " << tag.length << ")";
    }
    
    // ofxLinguisticTransform
    
    string hello001 = "こんにちは１１１";
    ofLogNotice("main:Result3.0") << hello001;
    hello001 = ofxStringTransform::transform(hello001, ofxStringTransformToLatin, false);
    ofLogNotice("main:Result3.1") << hello001;
    hello001 = ofxStringTransform::transform(hello001, ofxStringTransformFullwidthHalfwidth, false);
    ofLogNotice("main:Result3.2") << hello001;
    
    string openframeworks = "openFrameworks";
    ofLogNotice("main:Result4.0") << openframeworks;
    openframeworks = ofxStringTransform::transform(openframeworks, ofxStringTransformLatinGreek, false);
    ofLogNotice("main:Result4.1") << openframeworks;
    
    openframeworks = "openFrameworks";
    ofLogNotice("main:Result5.0") << openframeworks;
    openframeworks = ofxStringTransform::transform(openframeworks, ofxStringTransformLatinCyrillic, false);
    ofLogNotice("main:Result5.1") << openframeworks;
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){

}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
