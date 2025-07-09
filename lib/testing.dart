import 'package:flutter/material.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';

class testin extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  testin({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomTextField(controller: emailController,
        label: 'email',hintText: 'khan',prefixIcon: Icons.padding_rounded,)
    );
  }
}
