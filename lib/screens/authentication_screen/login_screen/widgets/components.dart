import 'package:flutter/material.dart';
import 'package:shoes_store/bottom_navigation_screen.dart';

import '../../signup_screen/register_mainscreen.dart';

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
            'Welcome Back!',
            style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xff193364)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 48),
          child: Text(
            'Sign in to continue',
            style: TextStyle(fontSize: 24, color: Colors.grey),
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

class ForgotPasswordRow extends StatelessWidget {
  const ForgotPasswordRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              side: BorderSide(color: Colors.grey),
              value: false,
              onChanged: (value) {},
            ),
            const Text(
              'Remember me',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Forgot Password?',
            style: TextStyle(color: Color(0xff193364)),
          ),
        ),
      ],
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => BottomNavigationScreen()),
        );
      },
      child: Text(
        'Sign in',
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

class signupButton extends StatelessWidget {
  const signupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SignupPage()),
            );
          },
          child: Text('Sign Up'),
        )
      ],
    );
  }
}
