import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DealsWidget extends StatelessWidget {
  final PageController _pageController = PageController();
  final RxInt _currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25.h,
          child: PageView.builder(
            controller: _pageController,
            itemCount: 5,
            onPageChanged: (int index) {
              _currentPage.value = index;
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: SizedBox(
                    // width: 60.w,
                    child: Image.asset(
                      'assets/images/deal${index + 1}.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Obx(() => _buildIndicatorDots()),
      ],
    );
  }

  Widget _buildIndicatorDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Container(
            width: 8,
            height: 3.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage.value == index ? Colors.blue : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
