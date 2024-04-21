import 'package:flutter/material.dart';
import 'package:shoes_store/screens/authentication_screen/signup_screen/widgets/Textformfields.dart';
import 'package:shoes_store/screens/authentication_screen/signup_screen/widgets/components.dart';
import 'widgets/appbar.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: SignupAppbar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 48,
              ),
              DecoratedContainer(),
              WelcomeTextsColumn(),
              Column(
                children: [
                  NameField(),
                  SizedBox(
                    height: 16,
                  ),
                  EmailField(),
                  SizedBox(
                    height: 16,
                  ),
                  PasswordField(),
                  SizedBox(
                    height: 16,
                  ),
                  ConfirmPasswordField(),
                  SizedBox(
                    height: 32,
                  ),
                  SignupButton(),
                  SizedBox(
                    height: 8,
                  ),
                  AlreadySibninButton(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
