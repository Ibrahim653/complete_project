import 'package:complete_project/core/helpers/extensions.dart';
import 'package:complete_project/core/networking/api_error_handler.dart';
import 'package:complete_project/features/home/data/repos/home_repo.dart';
import 'package:complete_project/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/specializations_response_model.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    try {
      final response = await _homeRepo.getSpecialization();
      response.when(success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];
// getting the doctors list for the first specialization by default
        getDoctorsList(
            specializationId:
                specializationsList?.first?.id);
        emit(HomeState.specializationsSuccess(specializationsList));
      }, failure: (errorHandler) {
        emit(HomeState.specializationsError(errorHandler));
      });
    } catch (error) {
      emit(HomeState.specializationsError(ErrorHandler.handle(error)));
    }
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);
    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No Doctors Found')));
    }
  }

  /// return the list of doctors based on the specialization id

  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
