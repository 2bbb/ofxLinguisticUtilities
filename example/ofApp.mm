#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){
    using namespace ofxLinguistic;
    
    string ________________ = "\n **** **** **** **** **** **** **** **** \n\n";
    
    string taggingString = "Hello, I am a pen in Japan.";
    string taggingLanguage = LanguageCode::English;
    vector<string> schemes = Tagger::availableTagSchemes(taggingLanguage);
    for(int i = 0; i < schemes.size(); i++) {
        ofLogNotice("main:availableSchemes") << schemes[i];
    }
    
    TagResult result = Tagger::tagging(taggingString, taggingLanguage, TagScheme::NameTypeOrLexicalClass);
    ofLogNotice("main:Result1.0") << "\"" << result.getText()<< "\" (" << result.getLanguage() << ", " << result.getScheme() << ")";
    
    for(int i = 0; i < result.size(); i++) {
        const Tag &tag = result[i];
        ofLogNotice("main:Result1.0") << tag.tag << " : " << tag.token << " (" << tag.tokenBegin << ", " << tag.tokenLength << ")";
    }

    cout << ________________;
    
    taggingString = "こんにちは、私は日本のペンです。";
    taggingLanguage = LanguageCode::Japanese;
    schemes = Tagger::availableTagSchemes(taggingLanguage);
    for(int i = 0; i < schemes.size(); i++) {
        ofLogNotice("main:availableSchemes") << schemes[i];
    }
    
    result = Tagger::tagging(taggingString, taggingLanguage, schemes[0]);
    ofLogNotice("main:Result1.1") << "\"" << result.getText()<< "\" (" << result.getLanguage() << ", " << result.getScheme() << ")";
    
    for(int i = 0; i < result.size(); i++) {
        const Tag &tag = result[i];
        ofLogNotice("main:Result1.1") << tag.tag << " : " << tag.token << " (" << tag.tokenBegin << ", " << tag.tokenLength << ")";
    }
    
    cout << ________________;
    
    taggingString = "こんにちは、私は日本のペンです。 Hello, World.";
    taggingLanguage = LanguageCode::Japanese;
    schemes = Tagger::availableTagSchemes(taggingLanguage);
    for(int i = 0; i < schemes.size(); i++) {
        ofLogNotice("main:availableSchemes") << schemes[i];
    }
    
    result = Tagger::tagging(taggingString, taggingLanguage, TagScheme::Script);
    ofLogNotice("main:Result1.2") << "\"" << result.getText()<< "\" (" << result.getLanguage() << ", " << result.getScheme() << ")";
    
    for(int i = 0; i < result.size(); i++) {
        const Tag &tag = result[i];
        ofLogNotice("main:Result1.2") << tag.tag << " : " << tag.token << " (" << tag.tokenBegin << ", " << tag.tokenLength << ")";
    }
    
    cout << ________________;
    
    taggingString = "こんにちは、私は日本のペンです。 Hello, World.";
    taggingLanguage = LanguageCode::Japanese;
    schemes = Tagger::availableTagSchemes(taggingLanguage);
    for(int i = 0; i < schemes.size(); i++) {
        ofLogNotice("main:availableSchemes") << schemes[i];
    }
    
    result = Tagger::tagging(taggingString, taggingLanguage, TagScheme::Language);
    ofLogNotice("main:Result1.3") << "\"" << result.getText()<< "\" (" << result.getLanguage() << ", " << result.getScheme() << ")";
    
    for(int i = 0; i < result.size(); i++) {
        const Tag &tag = result[i];
        ofLogNotice("main:Result1.3") << tag.tag << " : " << tag.token << " (" << tag.tokenBegin << ", " << tag.tokenLength << ")";
    }
    
    cout << ________________;
    
    taggingString = "こんにちは、私は日本のペンです。 Hello my name is not zachary lieberman.";
    ofLogNotice("main:Result2.0") << detectLanguageCode(taggingString);
    Orthography orth = detectLanguageDetail(taggingString);
    ofLogNotice("main:Result2.0") << orth.dominantScript << ", " << orth.dominantLanguage;
    ofLogNotice("main:Result2.0") << "all language codes";
    for(int i = 0; i < orth.languageCodes.size(); i++) {
        ofLogNotice("main:Result2.0") << " " << orth.languageCodes[i];
    }
    ofLogNotice("main:Result2.0") << "all script types";
    for(int i = 0; i < orth.scriptTypes.size(); i++) {
        ofLogNotice("main:Result2.0") << " " << orth.scriptTypes[i];
    }

    cout << ________________;
    
#pragma mark ofxLinguisticTransform example
    
    using namespace ofxStringTransform;
    string hello001 = "こんにちは１１１";
    ofLogNotice("main:Result3.0") << hello001;
    hello001 = transform(hello001, TransformType::ToLatin, false);
    ofLogNotice("main:Result3.0") << hello001;
    hello001 = transform(hello001, TransformType::FullwidthHalfwidth, false);
    ofLogNotice("main:Result3.0") << hello001;
    
    cout << ________________;
    
    string openframeworks = "openFrameworks";
    ofLogNotice("main:Result3.1") << openframeworks;
    openframeworks = transform(openframeworks, TransformType::LatinGreek, false);
    ofLogNotice("main:Result3.1") << openframeworks;
    
    cout << ________________;

    openframeworks = "openFrameworks";
    ofLogNotice("main:Result3.2") << openframeworks;
    openframeworks = transform(openframeworks, TransformType::LatinCyrillic, false);
    ofLogNotice("main:Result3.2") << openframeworks;
    
    cout << ________________;
    
    openframeworks = "openFrameworks";
    ofLogNotice("main:Result3.2") << openframeworks;
    openframeworks = transform(openframeworks, TransformType::LatinHangul, false);
    ofLogNotice("main:Result3.2") << openframeworks;
    
    cout << ________________;
    
    string dog = "🐶";
    ofLogNotice("main:Result3.3") << dog;
    string dogName = getUnicodeName(dog);
    ofLogNotice("main:Result3.3") << dogName;
    string dogXMLHex = getXMLHex(dog);
    ofLogNotice("main:Result3.3") << dogXMLHex;
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
