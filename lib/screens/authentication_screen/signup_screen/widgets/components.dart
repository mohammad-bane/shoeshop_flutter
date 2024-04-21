import 'package:flutter/material.dart';
import 'package:shoes_store/screens/authentication_screen/login_screen/login_mainscreen.dart';
import 'package:shoes_store/screens/authentication_screen/signup_screen/accountCreared_screen.dart';

class WelcomeTextsColumn extends StatelessWidget {
  const WelcomeTextsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Text(
            'Sign Up',
            style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xff193364)),
          ),
        ),
      ],
    );
  }
}

class DecoratedContainer extends StatelessWidget {
  const DecoratedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      width: 5,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        color: Color(0xff193364),
      ),
    );
  }
}

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => SuccesfullSignupPage()),
        );
      },
      child: Text(
        'Sign Up',
        style: TextStyle(fontSize: 18),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff193364),
        foregroundColor: Color.fromARGB(255, 250, 197, 5),
        minimumSize: Size(MediaQuery.of(context).size.width, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        ),
      ),
    );
  }
}

class AlreadySibninButton extends StatelessWidget {
  const AlreadySibninButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Already have an account?',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          child: Text('Sign in'),
        )
      ],
    );
  }
}
