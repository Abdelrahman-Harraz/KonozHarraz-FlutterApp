import 'package:flutter/material.dart';
import 'package:konouz_harraz/core/constants/constants.dart';
import 'package:sizer/sizer.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 4.h,
          child: ClipOval(
            child: Image.asset(
              'assets/images/pp.png',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(paddingAll),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello!"),
              Text("Abdelrahman Harraz"),
            ],
          ),
        ),
        SizedBox(width: 17.w),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/search.png',
            ))
      ],
    );
  }
}
