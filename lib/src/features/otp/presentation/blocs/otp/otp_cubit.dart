/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'otp_cubit.freezed.dart';

part 'otp_state.dart';

@injectable
class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(const OtpState.initial());
}
