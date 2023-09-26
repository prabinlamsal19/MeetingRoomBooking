/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

part of 'calendar_cubit.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.initial() = _Initial;
  const factory CalendarState.loading() = _Loading;
  const factory CalendarState.error({required String message}) = _Error;
  const factory CalendarState.success() = _Success;
}
