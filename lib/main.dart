import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_framework/max_width_box.dart';
import 'package:responsive_framework/responsive_framework.dart' as rf;

import 'themes/colors/colors_theme.dart';
import 'bindings.dart';

import 'src/models/model.dart';
import 'src/views/view.dart';
import 'src/controllers/controller.dart';
import 'src/services/service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Title",
      theme: ThemeData(
        useMaterial3: false,
        scaffoldBackgroundColor: ColorsTheme.background,
        appBarTheme: const AppBarTheme(
          toolbarHeight: 56,
          color: ColorsTheme.background,
          elevation: 0.5,
        ),
      ),
      builder: (context, child) => rf.ResponsiveBreakpoints.builder(
        breakpoints: const [
          rf.Breakpoint(start: 0, end: 450, name: rf.MOBILE),
          rf.Breakpoint(start: 451, end: 800, name: rf.TABLET),
          rf.Breakpoint(start: 801, end: 1920, name: rf.DESKTOP),
          rf.Breakpoint(start: 1921, end: double.infinity, name: '2K'),
        ],
        child: MaxWidthBox(
          maxWidth: double.infinity,
          child: rf.ResponsiveScaledBox(
            width: Get.width < 450
                ? 450
                : Get.width > 450 && Get.width < 800
                    ? 800
                    : 1200,
            child: child!,
          ),
        ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const AuthenticationView(),
          binding: AuthenticationBinding(),
        ),

        GetPage(
          name: '/navigation',
          page: () => const NavigationView(),
          binding: NavigationBinding(),
        ),
        GetPage(
          name: '/home',
          page: () => const HomeView(),
          binding: AuthenticationBinding(),
        ),

        // Kalau binding banyak
        /* 
        GetPage(
          name: '/user/navigation',
          page: () => const UserNavigationView(),
          bindings: [
            HomeBinding(),
            ActivityBinding(),
            CommunityBinding(),
            ProfileBinding(),
            NavigationBinding(),
          ],
        ),
        */
      ],
    );
  }
}
