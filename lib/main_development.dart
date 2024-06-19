import 'package:complete_project/core/helpers/constants.dart';
import 'package:complete_project/core/helpers/extensions.dart';
import 'package:complete_project/core/helpers/shared_prefs_helper.dart';
import 'package:complete_project/core/routing/app_router.dart';
import 'package:complete_project/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // To fix texts being hidden bun in flutter_screen_util in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfUserLoggedIn();
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfUserLoggedIn() async {
  String? userToken =await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);

  if (userToken.isNullOrEmpty()) {
    isLoggedInUser = false;
  } else {
    isLoggedInUser = true;
  }
}
