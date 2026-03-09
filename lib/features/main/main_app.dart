import 'package:flutter/material.dart';
import 'package:greenmart/core/constants/app_assets.dart';
import 'package:greenmart/core/styles/app_colors.dart';
import 'package:greenmart/core/widgets/custom_svg_picture.dart';

class MainAppS extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainAppS();
}

class _MainAppS extends State<MainAppS> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.backgroundColor,

        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: CustomSvgPicture(
              path: AppAssets.exploreSvg,
              color: currentIndex == 0
                  ? AppColors.primaryColor
                  : AppColors.blackColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
      ),
    );
  }
}
