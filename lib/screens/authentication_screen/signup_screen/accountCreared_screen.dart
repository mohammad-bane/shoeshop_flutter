import 'package:flutter/material.dart';
import 'package:shoes_store/bottom_navigation_screen.dart';
import 'package:shoes_store/screens/authentication_screen/login_screen/widgets/components.dart';

class SuccesfullSignupPage extends StatelessWidget {
  const SuccesfullSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          /// Background Image for all pages
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/account_created.png'))),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 64),
                DecoratedContainer(),
                Text(
                  'Account Created!',
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff193364)),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'your account had been created succesfully.',
                  style: TextStyle(fontSize: 24, color: Colors.grey),
                ),
                SizedBox(height: 20,),
                ShopnowButton(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}



class ShopnowButton extends StatelessWidget {
  const ShopnowButton({
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
        'Shop Now',
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