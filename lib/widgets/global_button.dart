import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    Key? key,
    required this.isActive,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);
  final bool isActive;
  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46.h,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xfff1B301) : const Color(0xFFFEEBEB),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: ElevatedButton(
        onPressed: isActive ? onTap : null,
        style: ElevatedButton.styleFrom(
          backgroundColor:  const Color(0xfff1B301),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16.sp,
            color: isActive ? Colors.white :  Colors.blue,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
