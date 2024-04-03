import 'package:complete_project/core/helpers/spacing.dart';
import 'package:complete_project/core/theming/colors.dart';
import 'package:complete_project/core/widgets/app_text_button.dart';
import 'package:complete_project/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import 'widgets/already_have_account_text.dart';
import 'widgets/terms_ans_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: Styles.font24BlueBold,
              ),
              verticalSpace(8.h),
              Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: Styles.font14LightGreyRegular),
              verticalSpace(36.h),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                          title: 'Email',
                          validator: (value) {
                            return 'asfad';
                          }),
                      verticalSpace(18.h),
                      CustomTextFormField(
                          obsecureText: isObsecure,
                          suffexIcon: IconButton(
                            color: ColorsManager.mainBlue,
                            onPressed: () {
                              setState(() {
                                isObsecure = !isObsecure;
                              });
                            },
                            icon: isObsecure
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                          ),
                          title: 'Password',
                          validator: (value) {
                            return 'asfad';
                          }),
                      verticalSpace(24.h),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forget Password',
                          style: Styles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(40.h),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: Styles.font16WhiteMedium,
                        onPressed: () {},
                      ),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(70),
                      const AlreadyHaveAccountText(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
