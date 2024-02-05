import 'package:departuree/Splace.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()
{
  runApp(MyApp());

}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: Get.put(ThemeController()).thememode.value,
      home: SplashScreen(),
    );
  }
}



class ThemeController extends GetxController {
  RxBool isDark = false.obs;
  Rx<ThemeMode>thememode = ThemeMode.light.obs;

  void toggleTheme()
  {
    isDark.value = !isDark.value;
    thememode.value = (thememode.value == ThemeMode.light) ? ThemeMode.dark: ThemeMode.light;
    Get.changeThemeMode(thememode.value);
  }
}

