import 'package:complete_project/core/networking/api_error_handler.dart';
import 'package:complete_project/core/networking/api_result.dart';
import 'package:complete_project/core/networking/api_service.dart';
import 'package:complete_project/features/register/data/models/register_request_body.dart';
import 'package:complete_project/features/register/data/models/register_response.dart';

class RegisterRepo {
  final ApiService _apiService;

  RegisterRepo(this._apiService);
  Future<ApiResult<RegisterResponse>> register(RegisterRequestBody registerRequestBody) async {
   try {
     final RegisterResponse response = await _apiService.register(registerRequestBody);
     return ApiResult.success(response);
   } catch (error) {
     return ApiResult.failure(ErrorHandler.handle(error));
   }
  }

}