import 'package:complete_project/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController emailEditingController;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            title: 'Email',
            validator: (value) {
              if (value == null) {
                return 'please enter avalid email';
              }
            },
          ),
        ],
      ),
    );
  }
}
