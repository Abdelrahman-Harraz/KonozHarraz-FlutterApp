import 'package:flutter/material.dart';
import 'package:konouz_harraz/core/constants/constants.dart';

Widget CustomDivider() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: side),
    child: const Divider(
      thickness: 2.0,
      color: Colors.black,
    ),
  );
}
