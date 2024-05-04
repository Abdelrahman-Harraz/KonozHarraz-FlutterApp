import 'package:flutter/material.dart';
import 'package:konouz_harraz/theme.dart';
import 'package:sizer/sizer.dart';

class AuthBackgroundWidget extends StatelessWidget {
  AuthBackgroundWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OwnTheme.backgroundColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Image.asset(
                "assets/images/konozLogo.png",
                height: 30.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
