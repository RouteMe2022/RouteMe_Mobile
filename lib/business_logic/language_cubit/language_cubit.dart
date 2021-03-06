import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/data/local/cache_helper.dart';
import 'package:mobile/main.dart';
import 'package:flutter/material.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());

  static LanguageCubit get(context) => BlocProvider.of(context);

  void toArabic({
    VoidCallback? afterSuccess,
  }) {
    CacheHelper.saveDataSharedPreference(key: 'language', value: "ar");
    delegate.changeLocale(const Locale("ar"));
    emit(LanguageChangeState());
    afterSuccess!();
  }

  void toEnglish({
    VoidCallback? afterSuccess,
  }) {
    CacheHelper.saveDataSharedPreference(key: 'language', value: "en");
    delegate.changeLocale(const Locale("en"));
    emit(LanguageChangeState());
    afterSuccess!();
  }
}
