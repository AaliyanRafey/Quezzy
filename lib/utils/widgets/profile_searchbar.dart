import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget profileSearchBar() {
  // final TextEditingController controller = Get.put(TextEditingController());
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: SearchBar(
      onTap: () {},

      padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      ),
      backgroundColor: WidgetStatePropertyAll(Color(0xffefeefc)),
      elevation: WidgetStatePropertyAll(0),

      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(23)),
      ),
      hintText: 'Search topics or questions',
      hintStyle: WidgetStatePropertyAll(
        TextStyle(
          fontFamily: 'RubikReg',
          fontSize: 17,
          color: Color(0xff858494),
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 6.0,
        ), // optonal: aligns with Material spacing
        child: SvgPicture.asset(
          'assets/icons/searchicon.svg',
          width: 28,
          height: 28,
          color: Colors.black,
          // or whatever color you want
        ),
      ),
    ),
  );
}
