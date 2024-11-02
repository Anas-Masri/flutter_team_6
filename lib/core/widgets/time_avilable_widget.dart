import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_7/core/constants/app_colors.dart';

// ignore: must_be_immutable
class TimeAvilableWidget extends StatefulWidget {
  TimeAvilableWidget({
    super.key,
    required this.isAvailable,
    required this.time,
    this.isSelected = false,
  });
  final bool isAvailable;
  final String time;
  bool isSelected;

  @override
  State<TimeAvilableWidget> createState() => _TimeAvilableWidgetState();
}

class _TimeAvilableWidgetState extends State<TimeAvilableWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.isAvailable) {
          widget.isSelected = !widget.isSelected;
          setState(() {});
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: 85.w,
        height: 37.h,
        decoration: widget.isAvailable
            ? widget.isSelected
                ? BoxDecoration(
                    boxShadow: [
                        BoxShadow(
                            blurRadius: 12.6,
                            offset: const Offset(0, 4.5),
                            color:
                                AppColors.praimeryButtonColor.withOpacity(.25))
                      ],
                    borderRadius: BorderRadius.circular(7),
                    color: AppColors.praimeryButtonColor)
                : BoxDecoration(
                    border: Border.all(color: AppColors.praimeryButtonColor),
                    borderRadius: BorderRadius.circular(7),
                    color: AppColors.whiteButtonColor)
            : BoxDecoration(
                border: Border.all(color: AppColors.disactiveButtonColor),
                borderRadius: BorderRadius.circular(7),
                color: AppColors.disactiveIndicatorColor),
        child: Text(
          widget.time,
          style: widget.isAvailable
              ? widget.isSelected
                  ? TextStyle(
                      color: AppColors.whiteTextColor,
                      fontWeight: FontWeight.w500)
                  : TextStyle(
                      color: AppColors.praimeryButtonColor,
                      fontWeight: FontWeight.w500)
              : TextStyle(
                  color: AppColors.disactiveButtonColor,
                  fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
