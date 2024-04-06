import 'package:complete_project/core/helpers/spacing.dart';
import 'package:complete_project/core/widgets/app_text_button.dart';
import 'package:complete_project/features/login/data/models/login_request_body.dart';
import 'package:complete_project/features/login/logic/cubit/login_cubit.dart';
import 'package:complete_project/features/login/ui/widgets/email_and_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import 'widgets/already_have_account_text.dart';
import 'widgets/login_bloc_listner.dart';
import 'widgets/terms_ans_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }

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
              verticalSpace(8),
              Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: Styles.font14LightGreyRegular),
              verticalSpace(36),
              Column(
                children: [
                  const EmailAndPassword(),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forget Password',
                      style: Styles.font13BlueRegular,
                    ),
                  ),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: 'Login',
                    textStyle: Styles.font16WhiteMedium,
                    onPressed: () {
                      validateThenDoLogin(context);
                    },
                  ),
                  verticalSpace(16),
                  const TermsAndConditionsText(),
                  verticalSpace(55),
                  const AlreadyHaveAccountText(),
                  const LoginBlocListener(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
