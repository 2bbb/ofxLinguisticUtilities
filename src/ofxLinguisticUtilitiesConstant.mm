//
//  ofxLinguisticUtilitiesConstant.mm
//  ofxLinguisticUtilities
//
//  Created by ISHII 2bit on 2013/11/20.
//
//

#include "ofxLinguisticUtilitiesConstant.h"

using namespace ofxLinguistic;

const int TaggerOption::DefaultOption = TaggerOption::OmitWhitespace | TaggerOption::OmitPunctuation | TaggerOption::JoinNames;

#pragma mark namespace TransformType

#define STRING(str) CFStringGetCStringPtr((CFStringRef)str, kCFStringEncodingASCII);

const string TransformType::StripCombiningMarks = STRING(kCFStringTransformStripCombiningMarks);
const string TransformType::ToLatin = STRING(kCFStringTransformToLatin);
const string TransformType::FullwidthHalfwidth = STRING(kCFStringTransformFullwidthHalfwidth);
const string TransformType::LatinKatakana = STRING(kCFStringTransformLatinKatakana);
const string TransformType::LatinHiragana = STRING(kCFStringTransformLatinHiragana);
const string TransformType::HiraganaKatakana = STRING(kCFStringTransformHiraganaKatakana);
const string TransformType::MandarinLatin = STRING(kCFStringTransformMandarinLatin);
const string TransformType::LatinHangul = STRING(kCFStringTransformLatinHangul);
const string TransformType::LatinArabic = STRING(kCFStringTransformLatinArabic);
const string TransformType::LatinHebrew = STRING(kCFStringTransformLatinHebrew);
const string TransformType::LatinThai = STRING(kCFStringTransformLatinThai);
const string TransformType::LatinCyrillic = STRING(kCFStringTransformLatinCyrillic);
const string TransformType::LatinGreek = STRING(kCFStringTransformLatinGreek);
const string TransformType::ToXMLHex = STRING(kCFStringTransformToXMLHex);
const string TransformType::ToUnicodeName = STRING(kCFStringTransformToUnicodeName);
const string TransformType::StripDiacritics = STRING(kCFStringTransformStripDiacritics);

#pragma mark namespace TagScheme

const string TagScheme::TokenType = STRING(NSLinguisticTagSchemeTokenType);
const string TagScheme::LexicalClass = STRING(NSLinguisticTagSchemeLexicalClass);
const string TagScheme::NameType = STRING(NSLinguisticTagSchemeNameType);
const string TagScheme::NameTypeOrLexicalClass = STRING(NSLinguisticTagSchemeNameTypeOrLexicalClass);
const string TagScheme::Lemma = STRING(NSLinguisticTagSchemeLemma);
const string TagScheme::Language = STRING(NSLinguisticTagSchemeLanguage);
const string TagScheme::Script = STRING(NSLinguisticTagSchemeScript);

#pragma mark namespace TagType

#pragma mark namespace TagType::TokenType

const string TagType::TokenType::Word = STRING(NSLinguisticTagWord);
const string TagType::TokenType::Punctuation = STRING(NSLinguisticTagPunctuation);
const string TagType::TokenType::Whitespace = STRING(NSLinguisticTagWhitespace);
const string TagType::TokenType::Other = STRING(NSLinguisticTagOther);

#pragma mark namespace TagType::LexicalClass

const string TagType::LexicalClass::Noun = STRING(NSLinguisticTagNoun);
const string TagType::LexicalClass::Verb = STRING(NSLinguisticTagVerb);
const string TagType::LexicalClass::Adjective = STRING(NSLinguisticTagAdjective);
const string TagType::LexicalClass::Adverb = STRING(NSLinguisticTagAdverb);
const string TagType::LexicalClass::Pronoun = STRING(NSLinguisticTagPronoun);
const string TagType::LexicalClass::Determiner = STRING(NSLinguisticTagDeterminer);
const string TagType::LexicalClass::Particle = STRING(NSLinguisticTagParticle);
const string TagType::LexicalClass::Preposition = STRING(NSLinguisticTagPreposition);
const string TagType::LexicalClass::Number = STRING(NSLinguisticTagNumber);
const string TagType::LexicalClass::Conjunction = STRING(NSLinguisticTagConjunction);
const string TagType::LexicalClass::Interjection = STRING(NSLinguisticTagInterjection);
const string TagType::LexicalClass::Classifier = STRING(NSLinguisticTagClassifier);
const string TagType::LexicalClass::Idiom = STRING(NSLinguisticTagIdiom);
const string TagType::LexicalClass::OtherWord = STRING(NSLinguisticTagOtherWord);
const string TagType::LexicalClass::SentenceTerminator = STRING(NSLinguisticTagSentenceTerminator);
const string TagType::LexicalClass::OpenQuote = STRING(NSLinguisticTagOpenQuote);
const string TagType::LexicalClass::CloseQuote = STRING(NSLinguisticTagCloseQuote);
const string TagType::LexicalClass::OpenParenthesis = STRING(NSLinguisticTagOpenParenthesis);
const string TagType::LexicalClass::CloseParenthesis = STRING(NSLinguisticTagCloseParenthesis);
const string TagType::LexicalClass::WordJoiner = STRING(NSLinguisticTagWordJoiner);
const string TagType::LexicalClass::Dash = STRING(NSLinguisticTagDash);
const string TagType::LexicalClass::OtherPunctuation = STRING(NSLinguisticTagOtherPunctuation);
const string TagType::LexicalClass::ParagraphBreak = STRING(NSLinguisticTagParagraphBreak);
const string TagType::LexicalClass::OtherWhitespace = STRING(NSLinguisticTagOtherWhitespace);

#pragma mark namespace TagType::NameType

const string TagType::NameType::PersonalName = STRING(NSLinguisticTagPersonalName);
const string TagType::NameType::PlaceName = STRING(NSLinguisticTagPlaceName);
const string TagType::NameType::OrganizationName = STRING(NSLinguisticTagOrganizationName);

#undef STRING

#pragma mark namespace ScriptName

/* **** **** **** **** **** **** **** **** **** **** *
 * TODO: Where is I'll get all type...?              *
 * **** **** **** **** **** **** **** **** **** **** */

const string ScriptName::Latin = "Latn";
const string ScriptName::Cyrilic = "Cyrl";
const string ScriptName::Greek = "Grek";
const string ScriptName::Japanese = "Jpan";
const string ScriptName::Korean = "Kore";
const string ScriptName::SimplifiedHan = "Hans";
const string ScriptName::TraditionalHan = "Hant";
const string ScriptName::Zyyy = "Zyyy";

#pragma mark namespace LanguageCode

/* **** **** **** **** **** **** **** **** **** **** *
 * ISO 639: 2-letter codes                           *
 * cite: http://www.w3.org/WAI/ER/IG/ert/iso639.htm  *
 * **** **** **** **** **** **** **** **** **** **** */

const string LanguageCode::Afar = "aa";
const string LanguageCode::Abkhazian = "ab";
const string LanguageCode::Afrikaans = "af";
const string LanguageCode::Amharic = "am";
const string LanguageCode::Arabic = "ar";
const string LanguageCode::Assamese = "as";
const string LanguageCode::Aymara = "ay";
const string LanguageCode::Azerbaijani = "az";
const string LanguageCode::Bashkir = "ba";
const string LanguageCode::Byelorussian = "be";
const string LanguageCode::Bulgarian = "bg";
const string LanguageCode::Bihari = "bh";
const string LanguageCode::Bislama = "bi";
const string LanguageCode::Bengali = "bn";
const string LanguageCode::Tibetan = "bo";
const string LanguageCode::Breton = "br";
const string LanguageCode::Catalan = "ca";
const string LanguageCode::Corsican = "co";
const string LanguageCode::Czech = "cs";
const string LanguageCode::Welsh = "cy";
const string LanguageCode::Danish = "da";
const string LanguageCode::German = "de";
const string LanguageCode::Bhutani = "dz";
const string LanguageCode::Greek = "el";
const string LanguageCode::English = "en";
const string LanguageCode::Esperanto = "eo";
const string LanguageCode::Spanish = "es";
const string LanguageCode::Estonian = "et";
const string LanguageCode::Basque = "eu";
const string LanguageCode::Persian = "fa";
const string LanguageCode::Finnish = "fi";
const string LanguageCode::Fiji = "fj";
const string LanguageCode::Faeroese = "fo";
const string LanguageCode::French = "fr";
const string LanguageCode::Frisian = "fy";
const string LanguageCode::Irish = "ga";
const string LanguageCode::Gaelic = "gd";
const string LanguageCode::Galician = "gl";
const string LanguageCode::Guarani = "gn";
const string LanguageCode::Gujarati = "gu";
const string LanguageCode::Hausa = "ha";
const string LanguageCode::Hindi = "hi";
const string LanguageCode::Croatian = "hr";
const string LanguageCode::Hungarian = "hu";
const string LanguageCode::Armenian = "hy";
const string LanguageCode::Interlingua = "ia";
const string LanguageCode::Interlingue = "ie";
const string LanguageCode::Inupiak = "ik";
const string LanguageCode::Indonesian = "in";
const string LanguageCode::Icelandic = "is";
const string LanguageCode::Italian = "it";
const string LanguageCode::Hebrew = "iw";
const string LanguageCode::Japanese = "ja";
const string LanguageCode::Yiddish = "ji";
const string LanguageCode::Javanese = "jw";
const string LanguageCode::Georgian = "ka";
const string LanguageCode::Kazakh = "kk";
const string LanguageCode::Greenlandic = "kl";
const string LanguageCode::Cambodian = "km";
const string LanguageCode::Kannada = "kn";
const string LanguageCode::Korean = "ko";
const string LanguageCode::Kashmiri = "ks";
const string LanguageCode::Kurdish = "ku";
const string LanguageCode::Kirghiz = "ky";
const string LanguageCode::Latin = "la";
const string LanguageCode::Lingala = "ln";
const string LanguageCode::Laothian = "lo";
const string LanguageCode::Lithuanian = "lt";
const string LanguageCode::Latvian = "lv";
const string LanguageCode::Malagasy = "mg";
const string LanguageCode::Maori = "mi";
const string LanguageCode::Macedonian = "mk";
const string LanguageCode::Malayalam = "ml";
const string LanguageCode::Mongolian = "mn";
const string LanguageCode::Moldavian = "mo";
const string LanguageCode::Marathi = "mr";
const string LanguageCode::Malay = "ms";
const string LanguageCode::Maltese = "mt";
const string LanguageCode::Burmese = "my";
const string LanguageCode::Nauru = "na";
const string LanguageCode::Nepali = "ne";
const string LanguageCode::Dutch = "nl";
const string LanguageCode::Norwegian = "no";
const string LanguageCode::Occitan = "oc";
const string LanguageCode::Oromo = "om";
const string LanguageCode::Oriya = "or";
const string LanguageCode::Punjabi = "pa";
const string LanguageCode::Polish = "pl";
const string LanguageCode::Pashto = "ps";
const string LanguageCode::Portuguese = "pt";
const string LanguageCode::Quechua = "qu";
const string LanguageCode::RhaetoRomance = "rm";
const string LanguageCode::Kirundi = "rn";
const string LanguageCode::Romanian = "ro";
const string LanguageCode::Russian = "ru";
const string LanguageCode::Kinyarwanda = "rw";
const string LanguageCode::Sanskrit = "sa";
const string LanguageCode::Sindhi = "sd";
const string LanguageCode::Sangro = "sg";
const string LanguageCode::SerboCroatian = "sh";
const string LanguageCode::Singhalese = "si";
const string LanguageCode::Slovak = "sk";
const string LanguageCode::Slovenian = "sl";
const string LanguageCode::Samoan = "sm";
const string LanguageCode::Shona = "sn";
const string LanguageCode::Somali = "so";
const string LanguageCode::Albanian = "sq";
const string LanguageCode::Serbian = "sr";
const string LanguageCode::Siswati = "ss";
const string LanguageCode::Sesotho = "st";
const string LanguageCode::Sudanese = "su";
const string LanguageCode::Swedish = "sv";
const string LanguageCode::Swahili = "sw";
const string LanguageCode::Tamil = "ta";
const string LanguageCode::Tegulu = "te";
const string LanguageCode::Tajik = "tg";
const string LanguageCode::Thai = "th";
const string LanguageCode::Tigrinya = "ti";
const string LanguageCode::Turkmen = "tk";
const string LanguageCode::Tagalog = "tl";
const string LanguageCode::Setswana = "tn";
const string LanguageCode::Tonga = "to";
const string LanguageCode::Turkish = "tr";
const string LanguageCode::Tsonga = "ts";
const string LanguageCode::Tatar = "tt";
const string LanguageCode::Twi = "tw";
const string LanguageCode::Ukrainian = "uk";
const string LanguageCode::Urdu = "ur";
const string LanguageCode::Uzbek = "uz";
const string LanguageCode::Vietnamese = "vi";
const string LanguageCode::Volapuk = "vo";
const string LanguageCode::Wolof = "wo";
const string LanguageCode::Xhosa = "xh";
const string LanguageCode::Yoruba = "yo";
const string LanguageCode::Chinese = "zh";
const string LanguageCode::ChineseSimplified = "zh-Hans";
const string LanguageCode::ChineseTraditional = "zh-Hant";
const string LanguageCode::Zulu = "zu";