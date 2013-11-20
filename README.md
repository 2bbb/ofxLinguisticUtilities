# ofxLinguisticUtilities (OSX)

## How to use

1. Add AppKit.framework to your project
2. Add ofxLinguisticTagger & ofxObjective-C++Utility to your project and include ofxLinguisticTagger.h
3. Rename all files have extention like .cpp to .mm / Or, open Project Setting -> TARGETS -> Build Phases -> Compile Sources, and add flag "-x objective-c++" for all file of .cpp

## Dependencies

ofxObjective-C++Utility [__https://github.com/2bbb/ofxObjective-C--Utility__]

## API

### ofxLinguisticTagger

### ofxStringTransform

    ofxStringTransform::transform(string text, string transformType, bool bReverse);

## Notice

ofxLinguisticTagger worked on OSX over 10.7

## Update history

### 2013/11/20 ver 0.01 beta release


## License

MIT License.

## Author

* ISHII 2bit [bufferRenaiss co., ltd.]
* ishii[at]buffer-renaiss.com

## At the last

Please create new issue, if there is a problem.
And please throw pull request, if you have a cool idea!!