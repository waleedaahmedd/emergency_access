import 'package:emergency_access/route_generator.dart';
import 'package:emergency_access/utils/custom_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configLoading();

  runApp(
    const MyApp(),
  );
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.dualRing
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = CustomColors.blue
    ..backgroundColor = CustomColors.red
    ..indicatorColor = CustomColors.blue
    ..textColor = CustomColors.blue
    ..maskColor = Colors.black.withOpacity(0.5)
    ..maskType = EasyLoadingMaskType.custom
    ..userInteractions = false
    ..toastPosition = EasyLoadingToastPosition.bottom
    ..dismissOnTap = false;
  // ..customAnimation = CustomAnimation();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              primaryColor: CustomColors.blue,
              colorScheme: ThemeData().colorScheme.copyWith(
                    secondary: CustomColors.blue,
                    primary: CustomColors.blue,
                  ),
              textSelectionTheme: const TextSelectionThemeData(
                cursorColor: CustomColors.blue, //<-- SEE HERE
              ),
              inputDecorationTheme: InputDecorationTheme(
                //suffixIconColor: CustomColors.purple,
                focusColor: CustomColors.blue,
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w300),
                labelStyle: TextStyle(
                    color: CustomColors.blue,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: CustomColors.blue)),
              ),
            ),
            debugShowCheckedModeBanner: false,
            title: 'Welcome to PTMOSE',
            initialRoute: '/',
            onGenerateRoute: RouteGenerator.generateRoute,
            builder: EasyLoading.init(),
          );
        });
  }
}
