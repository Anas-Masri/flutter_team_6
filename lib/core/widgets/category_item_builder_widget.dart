import 'package:flutter/material.dart';
import 'package:task_7/core/constants/app_colors.dart';

class CategoryItemBuilderWidget extends StatefulWidget {
  const CategoryItemBuilderWidget({super.key});

  @override
  State<CategoryItemBuilderWidget> createState() =>
      _CategoryItemBuilderWidgetState();
}

bool isSelected = false;

class _CategoryItemBuilderWidgetState extends State<CategoryItemBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {
          isSelected = !isSelected;
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 13.5),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: -8,
                  blurRadius: 12.6,
                  color: AppColors.praimeryButtonColor,
                  offset: const Offset(0, 4.5))
            ],
            color: AppColors.praimeryButtonColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: const Text(
            'UI/UX',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
