import 'package:aliment/login_create_page.dart';
import 'package:aliment/widgets/login_account.dart';
import 'package:aliment/widgets/otp_verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main(List<String> args) async {
  runApp(const MainPage());
  await Future.delayed(const Duration(seconds: 5));
  FlutterNativeSplash.remove();
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/login_account": (context) => const LoginAccountPage(),
        "/otp_verification": (context) => const OtpVerification(),
        "/splash": (context) => const LoginCreatePage(),
      },
      initialRoute: "/splash",
      // home: const LoginCreatePage(),
    );
  }
}
