import 'package:complete_project/core/networking/api_constants.dart';
import 'package:complete_project/features/login/data/models/login_request_body.dart';
import 'package:complete_project/features/login/data/models/login_response.dart';
import 'package:complete_project/features/register/data/models/register_request_body.dart';
import 'package:complete_project/features/register/data/models/register_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);


  @POST(ApiConstants.register)
  Future<RegisterResponse> register(@Body() RegisterRequestBody registerRequestBody);


  
}
