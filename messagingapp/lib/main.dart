import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:messagingapp/BaseBinding.dart';
import 'package:messagingapp/LocaleString.dart';
import 'package:messagingapp/LoginPage/LoginPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Native Splash Screen';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        getPages: [
          GetPage(
            name: '/base',
            page: () => const LoginPage(),
            binding: BaseBinding(),
          )
        ],
        translations: LocaleString(),
        locale: const Locale('en', 'US'),
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primaryColor: Colors.indigo),
        home: const LoginPage(),
      );
}
