import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:queezy_app/view_model/controller/searchBarController.dart';

Widget searchBar() {
  final controller = Get.put(Searchbarcontroller());
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: SearchBar(
      onTap: () => controller.toggleSearch(true),
      onChanged: controller.updateSearch,
      padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      ),
      backgroundColor: WidgetStatePropertyAll(
        Color(0xff0C092A).withOpacity(0.16),
      ),
      elevation: WidgetStatePropertyAll(0),

      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(23)),
      ),
      hintText: 'Quiz, categories or friends',
      hintStyle: WidgetStatePropertyAll(
        TextStyle(
          fontFamily: 'RubikReg',
          fontSize: 17,
          color: Color(0xffE6E6E6),
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
        ), // optional: aligns with Material spacing
        child: SvgPicture.asset(
          'assets/icons/searchicon.svg',
          width: 28,
          height: 28,
          color: Colors.white,
          // or whatever color you want
        ),
      ),
    ),
  );
}
