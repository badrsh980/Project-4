import 'package:flutter/material.dart';
import 'package:project4/widgets/login_widget/description_text_screen.dart';
import 'package:project4/widgets/login_widget/first_text_ADS_watch.dart';
import 'package:project4/widgets/login_widget/sign_in_buttom.dart';
import 'package:project4/widgets/signup_widget/sgin_in_buttom.dart';
import 'package:project4/widgets/text_field_widget.dart';
import '../../constant/constant.dart';
import '../login_widget/title_text_screen.dart';

class SignUpContentWidget extends StatelessWidget {
  const SignUpContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController fullNameController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //--------------------------------
          const FirstTextADSWatch(),
          //--------------------------------
          height40,
          const TitleTextScreen(
            titleScreen: "Let's Sign up",
          ),
          //---------------------------------
          height8,
          const DescriptionTextScreen(
            descriptionScreen: "Let's sign up to get rewards.",
          ),
          //---------------------------------
          height40,
          TextFieldWidget(
            controller: usernameController,
            labelText: "Username or Email",
            hintText: "Enter Username or Email",
            isObscureText: false,
          ),
          //--------------------------------
          height30,
          TextFieldWidget(
            controller: fullNameController,
            labelText: "Full Name",
            hintText: "Enter Name Here ",
            isObscureText: true,
          ),
          //--------------------------------
          height30,
          TextFieldWidget(
            controller: passwordController,
            labelText: "Password",
            hintText: "Enter Password ",
            isObscureText: true,
          ),
          //---------------------------------
          height14,
          const ButtomWidget(
            textButtom: 'Sign up',
          ),
          //----------------------------------
          height32,
          const SignInButtom()
        ],
      ),
    );
  }
}
