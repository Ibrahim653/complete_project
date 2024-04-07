import 'package:complete_project/features/register/data/models/register_request_body.dart';
import 'package:complete_project/features/register/data/repos/register_repo.dart';
import 'package:complete_project/features/register/logic/cubit/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo registerRepo;
  RegisterCubit(this.registerRepo) : super(const RegisterState.initial());

  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitRegisterSatate(RegisterRequestBody registerRequestBody) async {
    emit(const RegisterState.loading());
    final response = await registerRepo.register(registerRequestBody);
    response.when(
      success: (registerResponse){
            emit( RegisterState.success(registerResponse));
    
      },
      failure: (error){
         emit(RegisterState.error(error: error.apiErrorModel.message ?? ''));

      },
    );
  }
}
