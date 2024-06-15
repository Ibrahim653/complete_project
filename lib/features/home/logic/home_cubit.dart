import 'package:complete_project/core/networking/api_error_handler.dart';
import 'package:complete_project/features/home/data/repos/home_repo.dart';
import 'package:complete_project/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    try {
      final response = await _homeRepo.getSpecialization();
      response.when(success: (specializationsResponseModel) {
        emit(HomeState.specializationsSuccess(specializationsResponseModel));
      }, failure: (errorHandler) {
        emit(HomeState.specializationsError(errorHandler));
      });
    } catch (error) {
      emit(HomeState.specializationsError(ErrorHandler.handle(error)));
    }
  }
}
