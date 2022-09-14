import 'package:flutter/material.dart';
import 'package:flutter_chake_app/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'flutter chake app',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Home(),
        );
      },
    );
  }
}
