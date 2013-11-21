//
//  ofxLinguisticUtilitiesConstant.h
//  ofxLinguisticUtilities
//
//  Created by ISHII 2bit on 2013/11/20.
//
//

#ifndef __ofxLinguisticUtilitiesConstant__
#define __ofxLinguisticUtilitiesConstant__

#include "ofMain.h"

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

namespace ofxLinguistic {
    namespace TaggerOption {
        enum {
            OmitWords = NSLinguisticTaggerOmitWords, /* Omit tokens of type NSLinguisticTagWord. */
            OmitPunctuation = NSLinguisticTaggerOmitPunctuation, /* Omit tokens of type NSLinguisticTagPunctuation. */
            OmitWhitespace = NSLinguisticTaggerOmitWhitespace, /* Omit tokens of type NSLinguisticTagWhitespace. */
            OmitOther = NSLinguisticTaggerOmitOther, /* Omit tokens of type NSLinguisticTagOther. */
            JoinNames = NSLinguisticTaggerJoinNames
        };
    };
    
    namespace TransformType {
        extern const string StripCombiningMarks;
        extern const string ToLatin;
        extern const string FullwidthHalfwidth;
        extern const string LatinKatakana;
        extern const string LatinHiragana;
        extern const string HiraganaKatakana;
        extern const string MandarinLatin;
        extern const string LatinHangul;
        extern const string LatinArabic;
        extern const string LatinHebrew;
        extern const string LatinThai;
        extern const string LatinCyrillic;
        extern const string LatinGreek;
        extern const string ToXMLHex;
        extern const string ToUnicodeName;
        extern const string StripDiacritics;
    };

    namespace TagScheme {
        extern const string TokenType;
        extern const string LexicalClass;
        extern const string NameType;
        extern const string NameTypeOrLexicalClass;
        extern const string Lemma;
        extern const string Language;
        extern const string Script;
    };
    
    namespace ScriptName {
        extern const string Latin;
        extern const string Cyrilic;
        extern const string Greek;
        extern const string Japanese;
        extern const string Korean;
        extern const string SimplifiedHan;
        extern const string TraditionalHan;
        extern const string Zyyy;
    };

    namespace LanguageCode {
        extern const string Afar;
        extern const string Abkhazian;
        extern const string Afrikaans;
        extern const string Amharic;
        extern const string Arabic;
        extern const string Assamese;
        extern const string Aymara;
        extern const string Azerbaijani;
        extern const string Bashkir;
        extern const string Byelorussian;
        extern const string Bulgarian;
        extern const string Bihari;
        extern const string Bislama;
        extern const string Bengali;
        extern const string Tibetan;
        extern const string Breton;
        extern const string Catalan;
        extern const string Corsican;
        extern const string Czech;
        extern const string Welsh;
        extern const string Danish;
        extern const string German;
        extern const string Bhutani;
        extern const string Greek;
        extern const string English;
        extern const string Esperanto;
        extern const string Spanish;
        extern const string Estonian;
        extern const string Basque;
        extern const string Persian;
        extern const string Finnish;
        extern const string Fiji;
        extern const string Faeroese;
        extern const string French;
        extern const string Frisian;
        extern const string Irish;
        extern const string Gaelic;
        extern const string Galician;
        extern const string Guarani;
        extern const string Gujarati;
        extern const string Hausa;
        extern const string Hindi;
        extern const string Croatian;
        extern const string Hungarian;
        extern const string Armenian;
        extern const string Interlingua;
        extern const string Interlingue;
        extern const string Inupiak;
        extern const string Indonesian;
        extern const string Icelandic;
        extern const string Italian;
        extern const string Hebrew;
        extern const string Japanese;
        extern const string Yiddish;
        extern const string Javanese;
        extern const string Georgian;
        extern const string Kazakh;
        extern const string Greenlandic;
        extern const string Cambodian;
        extern const string Kannada;
        extern const string Korean;
        extern const string Kashmiri;
        extern const string Kurdish;
        extern const string Kirghiz;
        extern const string Latin;
        extern const string Lingala;
        extern const string Laothian;
        extern const string Lithuanian;
        extern const string Latvian;
        extern const string Malagasy;
        extern const string Maori;
        extern const string Macedonian;
        extern const string Malayalam;
        extern const string Mongolian;
        extern const string Moldavian;
        extern const string Marathi;
        extern const string Malay;
        extern const string Maltese;
        extern const string Burmese;
        extern const string Nauru;
        extern const string Nepali;
        extern const string Dutch;
        extern const string Norwegian;
        extern const string Occitan;
        extern const string Oromo;
        extern const string Oriya;
        extern const string Punjabi;
        extern const string Polish;
        extern const string Pashto;
        extern const string Portuguese;
        extern const string Quechua;
        extern const string RhaetoRomance;
        extern const string Kirundi;
        extern const string Romanian;
        extern const string Russian;
        extern const string Kinyarwanda;
        extern const string Sanskrit;
        extern const string Sindhi;
        extern const string Sangro;
        extern const string SerboCroatian;
        extern const string Singhalese;
        extern const string Slovak;
        extern const string Slovenian;
        extern const string Samoan;
        extern const string Shona;
        extern const string Somali;
        extern const string Albanian;
        extern const string Serbian;
        extern const string Siswati;
        extern const string Sesotho;
        extern const string Sudanese;
        extern const string Swedish;
        extern const string Swahili;
        extern const string Tamil;
        extern const string Tegulu;
        extern const string Tajik;
        extern const string Thai;
        extern const string Tigrinya;
        extern const string Turkmen;
        extern const string Tagalog;
        extern const string Setswana;
        extern const string Tonga;
        extern const string Turkish;
        extern const string Tsonga;
        extern const string Tatar;
        extern const string Twi;
        extern const string Ukrainian;
        extern const string Urdu;
        extern const string Uzbek;
        extern const string Vietnamese;
        extern const string Volapuk;
        extern const string Wolof;
        extern const string Xhosa;
        extern const string Yoruba;
        extern const string Chinese;
        extern const string Zulu;
    };
};

#endif /* defined(__ofxLinguisticUtilitiesConstant__) */
