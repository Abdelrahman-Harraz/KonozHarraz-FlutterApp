import 'package:flutter/material.dart';
import 'package:konouz_harraz/theme.dart';
import 'package:sizer/sizer.dart';

Widget RowHomeBuilder({required BuildContext context}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 2.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Products",
          style: OwnTheme.bodyTextStyle()
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            // Navigating to the respective PlacesScreen on "See All" button click
            // Navigator.pushNamed(context, PlacesScreen.routeName,
            //     arguments: screenType);
          },
          child: Text(
            "See All",
            style: OwnTheme.bodyTextStyle()
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}
