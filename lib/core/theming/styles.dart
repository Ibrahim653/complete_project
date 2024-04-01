import 'package:complete_project/core/theming/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    color: ColorsManager.black,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      color: ColorsManager.mainBlue,
      fontWeight: FontWeight.bold);

  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.grey,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: ColorsManager.white,
     fontWeight: FontWeight.w500
  );
 static TextStyle font24Blue700Weight = TextStyle(
    fontSize: 24.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeight.w700,
  );

   static TextStyle font14grey400Weight = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.grey,
     fontWeight: FontWeight.w400
  );
 static TextStyle font14grey500Weight = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.grey2,
     fontWeight: FontWeight.w500
  );
}
