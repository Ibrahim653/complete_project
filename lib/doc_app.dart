import 'package:complete_project/core/routing/app_router.dart';
import 'package:complete_project/core/routing/routes.dart';
import 'package:complete_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      //  splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc Doc',
        // You can use the library anywhere in the app even in theme
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}