import 'package:flutter/material.dart';
import 'package:shophub_project/app/mobile/auth_service.dart';
import 'package:shophub_project/presentation/views/home_page.dart';
import 'package:shophub_project/presentation/views/login_page.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, this.pageIfNotConnected});

  final Widget? pageIfNotConnected;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: authService,
      builder: (context, authService, child) {
        return StreamBuilder(
          stream: authService.authStateChanges,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomePage();
            } else {
              return LoginPage();
            }
          },
        );
      },
    );
  }
}
