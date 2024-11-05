import 'package:flutter/material.dart';
import 'package:flutteruichallenge/screens/login_screen/login_desktop_screen.dart';
import 'package:flutteruichallenge/screens/login_screen/login_mobile_screen.dart';
import 'package:flutteruichallenge/screens/login_screen/login_tablet_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Media query
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1300,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 14,
              top: 14,
              right: 14,
              bottom: 14,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (size.width > 950)
                    const LoginDesktopScreen()
                  else if (size.width > 750)
                    const LoginTabletScreen()
                  else
                    const LoginMobileScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
