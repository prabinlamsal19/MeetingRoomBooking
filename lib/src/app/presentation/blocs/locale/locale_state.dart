/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

part of 'locale_cubit.dart';

@freezed
class LocaleState with _$LocaleState {
  const factory LocaleState({
    @Default(Locale('en')) Locale locale,
    @Default(ThemeMode.light) ThemeMode themeMode,
  }) = _LocaleState;
}
