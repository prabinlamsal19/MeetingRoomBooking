/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'field.freezed.dart';

@freezed
class Field<T> with _$Field<T> {
  const Field._();

  const factory Field({
    required T value,
    @Default('') String errorMessage,
    @Default(false) bool isValid,
    @Default(false) bool obscureText,
  }) = _Field<T>;

  bool get hasError => errorMessage.isNotEmpty;
}
