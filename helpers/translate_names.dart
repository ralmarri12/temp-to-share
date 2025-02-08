import 'package:nameing_translation/helpers/translation_data.dart';

class NameTranslationModule {
  static String? getEnglishSpelling(String arabicName) {
    String? result = TranslationData.arabicKeyedData[arabicName];

    if (result != null) {
      result = result.toUpperCase();
    }

    return TranslationData.arabicKeyedData[arabicName];
  }

  static String? getArabicSpelling(String englishName) {
    return TranslationData.englishKeyedData[englishName.toLowerCase()];
  }

  static testData() {
    print("[DEBUG]: Arabic Keyed Data");
    print(TranslationData.arabicKeyedData);
    print("[DEBUG]: English Keyed Data");
    print(TranslationData.englishKeyedData);
  }
}
