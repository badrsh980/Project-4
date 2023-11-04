import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/profile_widget/profile_pic.dart';
import 'package:project4/widgets/profile_widget/update_buttom.dart';
import 'package:project4/widgets/text_field_widget.dart';

class ProfileContentWidget extends StatelessWidget {
  const ProfileContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController fullNameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    return Column(
      children: [
        const ProfilePic(),
        height20,
        TextFieldWidget(
          hintText: 'Enter your full Name',
          labelText: 'Name',
          isObscureText: false,
          controller: fullNameController,
        ),
        height14,
        TextFieldWidget(
          hintText: 'Enter your phone number',
          labelText: 'Mobile Number',
          isObscureText: false,
          controller: phoneNumberController,
        ),
        height14,
        TextFieldWidget(
          hintText: 'Enter your new email',
          labelText: 'Email Address',
          isObscureText: false,
          controller: emailController,
        ),
        height14,
        TextFieldWidget(
          hintText: 'Enter your new password',
          labelText: 'Password',
          isObscureText: true,
          controller: passwordController,
        ),
        height30,
        const UpdateButtom()
      ],
    );
  }
}
