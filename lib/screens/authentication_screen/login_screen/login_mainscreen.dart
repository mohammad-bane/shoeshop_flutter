import 'package:flutter/material.dart';
import 'package:shoes_store/screens/authentication_screen/login_screen/widgets/textformfields.dart';

import 'widgets/appbar.dart';
import 'widgets/components.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: LoginAppbar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 48,),
              DecoratedContainer(),
              WelcomeTextsColumn(),
              Column(
                children: [
                  EmailField(),
                  SizedBox(
                    height: 16,
                  ),
                  PasswordField(),
                  SizedBox(
                    height: 16,
                  ),
                  ForgotPasswordRow(),
                  SizedBox(
                    height: 32,
                  ),
                  LoginButton(),
                  SizedBox(height: 8,),
                  signupButton(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
