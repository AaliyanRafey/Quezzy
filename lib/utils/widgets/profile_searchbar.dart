import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget profileSearchBar() {
  // final TextEditingController controller = Get.put(TextEditingController());
  return Padding(
    padding: EdgeInsets.all(24.0.r),
    child: SearchBar(
      onTap: () {},

      padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      ),
      backgroundColor: WidgetStatePropertyAll(Color(0xffefeefc)),
      elevation: WidgetStatePropertyAll(0),

      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(23.r),
        ),
      ),
      hintText: 'Search topics or questions',
      hintStyle: WidgetStatePropertyAll(
        TextStyle(
          fontFamily: 'RubikReg',
          fontSize: 17.sp,
          color: Color(0xff858494),
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: Padding(
        padding: EdgeInsets.only(
          left: 6.0.w,
        ), // optonal: aligns with Material spacing
        child: SvgPicture.asset(
          'assets/icons/searchicon.svg',
          width: 28.w,
          height: 28.h,
          color: Colors.black,
          // or whatever color you want
        ),
      ),
    ),
  );
}
