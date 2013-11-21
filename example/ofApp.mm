#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    using namespace ofxLinguisticUtilitiesConstant;
    using namespace ofxLinguistic;
    
    string ________________ = "\n **** **** **** **** **** **** **** **** \n\n";
    
    string taggingString = "Hello, I am a pen in Japan.";
    string taggingLanguage = LanguageCode::English;
    vector<string> schemes = Tagger::availableTagSchemes(taggingLanguage);
    for(int i = 0; i < schemes.size(); i++) {
        ofLogNotice("main:availableSchemes") << schemes[i];
    }
    
    Tagger::tagging(taggingString, taggingLanguage);
    TagResult result = Tagger::tagging(taggingString, taggingLanguage, schemes[6]);
    ofLogNotice("main:Result1") << "\"" << result.getText()<< "\" (" << result.getLanguage() << ", " << result.getScheme() << ")";
    
    for(int i = 0; i < result.size(); i++) {
        const Tag &tag = result[i];
        ofLogNotice("main:Result1") << tag.tag << " : " << tag.token << " (" << tag.tokenBegin << ", " << tag.tokenLength << ")";
    }

    cout << ________________;
    
    taggingString = "こんにちは、私は日本のペンです。";
    taggingLanguage = LanguageCode::Japanese;
    schemes = Tagger::availableTagSchemes(taggingLanguage);
    for(int i = 0; i < schemes.size(); i++) {
        ofLogNotice("main:availableSchemes") << schemes[i];
    }
    
    result = Tagger::tagging(taggingString, taggingLanguage, schemes[0]);
    ofLogNotice("main:Result2") << "\"" << result.getText()<< "\" (" << result.getLanguage() << ", " << result.getScheme() << ")";
    
    for(int i = 0; i < result.size(); i++) {
        const Tag &tag = result[i];
        ofLogNotice("main:Result2") << tag.tag << " : " << tag.token << " (" << tag.tokenBegin << ", " << tag.tokenLength << ")";
    }
    
    cout << ________________;
    
    // ofxLinguisticTransform
    
    using namespace ofxStringTransform;
    string hello001 = "こんにちは１１１";
    ofLogNotice("main:Result3.0") << hello001;
    hello001 = transform(hello001, TransformType::ToLatin, false);
    ofLogNotice("main:Result3.1") << hello001;
    hello001 = transform(hello001, TransformType::FullwidthHalfwidth, false);
    ofLogNotice("main:Result3.2") << hello001;
    
    cout << ________________;
    
    string openframeworks = "openFrameworks";
    ofLogNotice("main:Result4.0") << openframeworks;
    openframeworks = transform(openframeworks, TransformType::LatinGreek, false);
    ofLogNotice("main:Result4.1") << openframeworks;
    
    cout << ________________;

    openframeworks = "openFrameworks";
    ofLogNotice("main:Result5.0") << openframeworks;
    openframeworks = transform(openframeworks, TransformType::LatinCyrillic, false);
    ofLogNotice("main:Result5.1") << openframeworks;
    
    cout << ________________;
    
    string dog = "🐶";
    ofLogNotice("main:Result6.0") << dog;
    string dogName = getUnicodeName(dog);
    ofLogNotice("main:Result6.1") << dogName;
    string dogXMLHex = getXMLHex(dog);
    ofLogNotice("main:Result6.2") << dogXMLHex;
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
