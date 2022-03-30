import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:organico/core/components/theme_comp.dart';
import 'package:organico/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeComp.themeData,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: "/splash",
    );
  }
}
