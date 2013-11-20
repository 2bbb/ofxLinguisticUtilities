//
//  ofxLinguisticUtilitiesConstant.mm
//  ofxLinguisticUtilities
//
//  Created by ISHII 2bit on 2013/11/20.
//
//

#include "ofxLinguisticUtilitiesConstant.h"

#pragma mark namespace ofxLinguisticUtilitiesConstant::TransformType

#define CONV_CFSTRING_TO_STRING(str) CFStringGetCStringPtr(str, kCFStringEncodingASCII);

const string ofxLinguisticUtilitiesConstant::TransformType::StripCombiningMarks = CONV_CFSTRING_TO_STRING(kCFStringTransformStripCombiningMarks);
const string ofxLinguisticUtilitiesConstant::TransformType::ToLatin = CONV_CFSTRING_TO_STRING(kCFStringTransformToLatin);
const string ofxLinguisticUtilitiesConstant::TransformType::FullwidthHalfwidth = CONV_CFSTRING_TO_STRING(kCFStringTransformFullwidthHalfwidth);
const string ofxLinguisticUtilitiesConstant::TransformType::LatinKatakana = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinKatakana);
const string ofxLinguisticUtilitiesConstant::TransformType::LatinHiragana = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinHiragana);
const string ofxLinguisticUtilitiesConstant::TransformType::HiraganaKatakana = CONV_CFSTRING_TO_STRING(kCFStringTransformHiraganaKatakana);
const string ofxLinguisticUtilitiesConstant::TransformType::MandarinLatin = CONV_CFSTRING_TO_STRING(kCFStringTransformMandarinLatin);
const string ofxLinguisticUtilitiesConstant::TransformType::LatinHangul = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinHangul);
const string ofxLinguisticUtilitiesConstant::TransformType::LatinArabic = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinArabic);
const string ofxLinguisticUtilitiesConstant::TransformType::LatinHebrew = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinHebrew);
const string ofxLinguisticUtilitiesConstant::TransformType::LatinThai = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinThai);
const string ofxLinguisticUtilitiesConstant::TransformType::LatinCyrillic = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinCyrillic);
const string ofxLinguisticUtilitiesConstant::TransformType::LatinGreek = CONV_CFSTRING_TO_STRING(kCFStringTransformLatinGreek);
const string ofxLinguisticUtilitiesConstant::TransformType::ToXMLHex = CONV_CFSTRING_TO_STRING(kCFStringTransformToXMLHex);
const string ofxLinguisticUtilitiesConstant::TransformType::ToUnicodeName = CONV_CFSTRING_TO_STRING(kCFStringTransformToUnicodeName);
const string ofxLinguisticUtilitiesConstant::TransformType::StripDiacritics = CONV_CFSTRING_TO_STRING(kCFStringTransformStripDiacritics);

#undef CONV_CFSTRING_TO_STRING

#pragma mark namespace ofxLinguisticUtilitiesConstant::ScriptName

const string ofxLinguisticUtilitiesConstant::ScriptName::Latin = "Latn";
const string ofxLinguisticUtilitiesConstant::ScriptName::Cyrilic = "Cyrl";
const string ofxLinguisticUtilitiesConstant::ScriptName::Greek = "Grek";
const string ofxLinguisticUtilitiesConstant::ScriptName::Japanese = "Jpan";
const string ofxLinguisticUtilitiesConstant::ScriptName::Korean = "Kore";
const string ofxLinguisticUtilitiesConstant::ScriptName::SimplifiedHan = "Hans";
const string ofxLinguisticUtilitiesConstant::ScriptName::TraditionalHan = "Hant";
const string ofxLinguisticUtilitiesConstant::ScriptName::Zyyy = "Zyyy";

#pragma mark namespace ofxOrghographyLanguageCode

/* **** **** **** **** **** **** **** **** **** **** *
 * ISO 639: 2-letter codes                           *
 * cite: http://www.w3.org/WAI/ER/IG/ert/iso639.htm  *
 * **** **** **** **** **** **** **** **** **** **** */

const string ofxLinguisticUtilitiesConstant::LanguageCode::Afar = "aa";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Abkhazian = "ab";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Afrikaans = "af";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Amharic = "am";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Arabic = "ar";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Assamese = "as";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Aymara = "ay";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Azerbaijani = "az";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Bashkir = "ba";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Byelorussian = "be";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Bulgarian = "bg";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Bihari = "bh";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Bislama = "bi";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Bengali = "bn";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Tibetan = "bo";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Breton = "br";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Catalan = "ca";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Corsican = "co";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Czech = "cs";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Welsh = "cy";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Danish = "da";
const string ofxLinguisticUtilitiesConstant::LanguageCode::German = "de";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Bhutani = "dz";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Greek = "el";
const string ofxLinguisticUtilitiesConstant::LanguageCode::English = "en";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Esperanto = "eo";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Spanish = "es";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Estonian = "et";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Basque = "eu";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Persian = "fa";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Finnish = "fi";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Fiji = "fj";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Faeroese = "fo";
const string ofxLinguisticUtilitiesConstant::LanguageCode::French = "fr";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Frisian = "fy";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Irish = "ga";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Gaelic = "gd";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Galician = "gl";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Guarani = "gn";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Gujarati = "gu";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Hausa = "ha";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Hindi = "hi";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Croatian = "hr";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Hungarian = "hu";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Armenian = "hy";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Interlingua = "ia";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Interlingue = "ie";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Inupiak = "ik";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Indonesian = "in";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Icelandic = "is";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Italian = "it";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Hebrew = "iw";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Japanese = "ja";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Yiddish = "ji";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Javanese = "jw";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Georgian = "ka";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Kazakh = "kk";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Greenlandic = "kl";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Cambodian = "km";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Kannada = "kn";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Korean = "ko";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Kashmiri = "ks";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Kurdish = "ku";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Kirghiz = "ky";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Latin = "la";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Lingala = "ln";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Laothian = "lo";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Lithuanian = "lt";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Latvian = "lv";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Malagasy = "mg";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Maori = "mi";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Macedonian = "mk";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Malayalam = "ml";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Mongolian = "mn";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Moldavian = "mo";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Marathi = "mr";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Malay = "ms";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Maltese = "mt";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Burmese = "my";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Nauru = "na";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Nepali = "ne";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Dutch = "nl";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Norwegian = "no";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Occitan = "oc";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Oromo = "om";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Oriya = "or";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Punjabi = "pa";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Polish = "pl";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Pashto = "ps";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Portuguese = "pt";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Quechua = "qu";
const string ofxLinguisticUtilitiesConstant::LanguageCode::RhaetoRomance = "rm";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Kirundi = "rn";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Romanian = "ro";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Russian = "ru";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Kinyarwanda = "rw";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Sanskrit = "sa";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Sindhi = "sd";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Sangro = "sg";
const string ofxLinguisticUtilitiesConstant::LanguageCode::SerboCroatian = "sh";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Singhalese = "si";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Slovak = "sk";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Slovenian = "sl";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Samoan = "sm";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Shona = "sn";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Somali = "so";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Albanian = "sq";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Serbian = "sr";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Siswati = "ss";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Sesotho = "st";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Sudanese = "su";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Swedish = "sv";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Swahili = "sw";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Tamil = "ta";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Tegulu = "te";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Tajik = "tg";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Thai = "th";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Tigrinya = "ti";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Turkmen = "tk";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Tagalog = "tl";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Setswana = "tn";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Tonga = "to";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Turkish = "tr";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Tsonga = "ts";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Tatar = "tt";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Twi = "tw";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Ukrainian = "uk";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Urdu = "ur";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Uzbek = "uz";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Vietnamese = "vi";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Volapuk = "vo";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Wolof = "wo";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Xhosa = "xh";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Yoruba = "yo";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Chinese = "zh";
const string ofxLinguisticUtilitiesConstant::LanguageCode::Zulu = "zu";