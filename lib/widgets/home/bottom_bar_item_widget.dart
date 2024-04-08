import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_folio/constants/app_colors.dart';
import 'package:my_folio/widgets/primary_text.dart';

class BottomBarItemWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final RxInt selectedBottomBarIndex;
  final int itemIndex;

  const BottomBarItemWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.selectedBottomBarIndex,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        width: 70,
        child: InkWell(
          onTap: () {
            selectedBottomBarIndex.value = itemIndex;
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: selectedBottomBarIndex.value == itemIndex
                    ? AppColors.primaryMaterialColor
                    : Colors.grey,
              ),
              PrimaryText(
                title,
                fontWeight: selectedBottomBarIndex.value == itemIndex
                    ? FontWeight.w500
                    : FontWeight.w400,
                fontSize: 13,
                fontColor: selectedBottomBarIndex.value == itemIndex
                    ? AppColors.primaryMaterialColor
                    : Colors.grey,
              ),
            ],
          ),
        ),
      );
    });
  }
}
