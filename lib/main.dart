import 'package:flutter/material.dart';
import 'package:nlw_together/modules/splash/splash_dart.dart';
import 'package:nlw_together/shared/themes/appcolors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayFlow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: SplashPage(),
    );
  }
}
