import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speciality',
          style: Styles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          'See All',
          style: Styles.font12BlueRegular,
        ),
      ],
    );
  }
}