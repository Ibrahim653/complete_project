import 'package:complete_project/core/routing/app_router.dart';
import 'package:complete_project/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  // To fix texts being hidden bun in flutter_screen_util in release mode
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
