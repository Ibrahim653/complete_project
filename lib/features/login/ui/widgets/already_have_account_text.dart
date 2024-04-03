import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: Styles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: Styles.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
