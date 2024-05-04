import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:konouz_harraz/common/widgets/Custom_divider.dart';
import 'package:konouz_harraz/common/widgets/row_builder.dart';
import 'package:konouz_harraz/widgets/Home/deals_widget.dart';
import 'package:konouz_harraz/widgets/Home/home_screen_header.dart';
import 'package:konouz_harraz/widgets/Home/products_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
            child: HomeHeader(),
          ),
          DealsWidget(),
          RowHomeBuilder(context: context),
          ProductListView(),
        ],
      ),
    );
  }
}
