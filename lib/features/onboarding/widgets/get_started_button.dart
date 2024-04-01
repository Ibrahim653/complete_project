import 'package:complete_project/core/helpers/extensions.dart';
import 'package:complete_project/core/routing/routes.dart';
import 'package:complete_project/core/theming/colors.dart';
import 'package:complete_project/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(
            ColorsManager.mainBlue,
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize:
              MaterialStateProperty.all(const Size(double.infinity, 52)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      onPressed: () => context.pushNamed(Routes.loginScreen),
      child: Text(
        'Get Started',
        style: Styles.font16WhiteSemiBold,
      ),
    );
  }
}
