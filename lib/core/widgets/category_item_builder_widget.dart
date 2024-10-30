import 'package:flutter/material.dart';
import 'package:task_7/core/constants/app_colors.dart';

class CategoryItemBuilderWidget extends StatefulWidget {
  const CategoryItemBuilderWidget({
    super.key,
    required this.categoryName,
    required this.isSelected,
  });
  final String categoryName;
  final bool isSelected;
  @override
  State<CategoryItemBuilderWidget> createState() =>
      _CategoryItemBuilderWidgetState();
}

class _CategoryItemBuilderWidgetState extends State<CategoryItemBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 13.5),
        decoration: BoxDecoration(
          boxShadow: [
            widget.isSelected
                ? BoxShadow(
                    spreadRadius: -8,
                    blurRadius: 12.6,
                    color: AppColors.praimeryButtonColor,
                    offset: const Offset(0, 4.5))
                : const BoxShadow()
          ],
          color: widget.isSelected
              ? AppColors.praimeryButtonColor
              : const Color(0xffF6F7FA),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Text(
          widget.categoryName,
          style: TextStyle(
              color:
                  widget.isSelected ? Colors.white : const Color(0xff9D9FA0)),
        ),
      ),
    );
  }
}
