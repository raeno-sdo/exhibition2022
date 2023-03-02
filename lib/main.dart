import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:exhibition2022/pages/common.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}
bool isLoading = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(480, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '東京電子専門学校2022展示会サイト',
          theme: ThemeData(
            fontFamily: 'NotoSansJP',
            scaffoldBackgroundColor: const Color.fromARGB(255, 235, 240, 243),
            primaryColor: const Color.fromARGB(255, 0, 137, 193),
            appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 0, 137, 193),
            )
          ),
          builder: (context, child) => ResponsiveWrapper.builder(
            child,
            maxWidth: 2560,
            minWidth: 480,
            defaultScale: true,
            breakpoints: const [
              ResponsiveBreakpoint.resize(480, name: MOBILE),
              ResponsiveBreakpoint.resize(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(2460, name: '4K'),
            ],
          ),
          home: child,
        );
      },
      child: const CommonPage(),
    );
  }
}

// レスポンシブ
// https://docs.flutter.dev/development/ui/layout/adaptive-responsive
// https://pub.dev/packages/flutter_screenutil

// ResponsiveValue(
//   context,
//   defaultValue: 350.0,
//   valueWhen: const [
//     Condition.smallerThan(name: TABLET, value: 500.0),
//     Condition.largerThan(name: DESKTOP, value: 600.0),
//   ],
// ).value,

// AppIcon
// https://zenn.dev/kentaroh/articles/83a7e86170776e

// パッケージ検索
// https://pub.dev/packages?q=

// Video
// https://pub.dev/packages/video_player

// プレビュー
// https://pub.dev/packages/device_preview