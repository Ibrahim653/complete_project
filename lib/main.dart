import 'package:complete_project/core/routing/app_router.dart';
import 'package:complete_project/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//     );
//   }
// }
