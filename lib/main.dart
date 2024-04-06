import 'package:complete_project/core/routing/app_router.dart';
import 'package:complete_project/doc_app.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
