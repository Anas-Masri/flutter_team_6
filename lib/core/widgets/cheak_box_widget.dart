import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_7/core/widgets/time_avilable_widget.dart';

class CheakBoxWidget extends StatefulWidget {
  const CheakBoxWidget({
    super.key,
  });

  @override
  State<CheakBoxWidget> createState() => _CheakBoxWidgetState();
}

class _CheakBoxWidgetState extends State<CheakBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isSelected = !isSelected;
        setState(() {});
      },
      child: Container(
        alignment: Alignment.center,
        width: 18,
        height: 18,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xff9D9FA0).withOpacity(0.4)),
        child: isSelected
            ? SvgPicture.asset('assets/svgs/Fill 4.svg')
            : const SizedBox(),
      ),
    );
  }
}
