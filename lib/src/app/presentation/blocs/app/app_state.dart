/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial({@Default(false) bool showSplash}) = _Initial;

  const factory AppState.authenticated() = _Authenticated;

  const factory AppState.unAuthenticated() = _UnAuthenticated;
}
