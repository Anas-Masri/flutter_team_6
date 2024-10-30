import 'package:flutter/material.dart';
import 'package:task_7/core/constants/app_colors.dart';

class TimeAvilableWidget extends StatefulWidget {
  const TimeAvilableWidget({
    super.key,
    required this.isAvailable,
    required this.time,
  });
  final bool isAvailable;
  final String time;
  @override
  State<TimeAvilableWidget> createState() => _TimeAvilableWidgetState();
}

bool isSelected = false;

class _TimeAvilableWidgetState extends State<TimeAvilableWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.isAvailable) {
          isSelected = !isSelected;
          setState(() {});
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: 85,
        height: 37,
        decoration: widget.isAvailable
            ? isSelected
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
                    color: Colors.white)
            : BoxDecoration(
                border: Border.all(color: const Color(0xffC7C9D9)),
                borderRadius: BorderRadius.circular(7),
                color: const Color(0xffEEEEEE)),
        child: Text(
          '${widget.time} Am',
          style: widget.isAvailable
              ? isSelected
                  ? const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500)
                  : const TextStyle(
                      color: Color(0xffFF8500), fontWeight: FontWeight.w500)
              : const TextStyle(
                  color: Color(0xffC7C9D9), fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
