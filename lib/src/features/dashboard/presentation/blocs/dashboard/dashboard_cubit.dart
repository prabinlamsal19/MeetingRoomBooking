/*
 * Copyright (c) 2022.
 * Author: Kishor Mainali
 * Company: EB Pearls
 */
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meeting_room/src/core/di/injector.dart';
import 'package:meeting_room/src/features/dashboard/data/models/floor_model.dart';
import 'package:meeting_room/src/features/dashboard/domain/repository/dashboard_repository.dart';

part 'dashboard_cubit.freezed.dart';

part 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState.initial());

  void getFloorsList() async {
    emit(const DashboardState.loading());
    final floorList = await getIt<DashboardRepository>().getRoomsAndEvents();
    emit(DashboardState.success(floorList: floorList));
  }
}
