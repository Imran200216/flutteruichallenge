import 'package:flutter/material.dart';
import 'package:flutteruichallenge/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginDesktopScreen extends StatelessWidget {
  const LoginDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              /// login form contents
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 900,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Welcome Back",
                            style: GoogleFonts.poppins(
                              color: AppColors.titleColor,
                              fontSize: 34,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 100,
              ),

              /// login image
              Expanded(
                flex: 4,
                child: Container(
                  height: 900,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/jpg/Login-Art.jpg",
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
