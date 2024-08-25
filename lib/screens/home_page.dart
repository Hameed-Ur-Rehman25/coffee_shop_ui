import 'package:coffee_shop_ui/utils/pallete.dart';
import 'package:coffee_shop_ui/screens/main_menu_screen.dart';
import 'package:coffee_shop_ui/widgets/login_button.dart';
import 'package:coffee_shop_ui/widgets/social_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor_1,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 50,
                  ),
                ),
                const Text(
                  'KOKUMI',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'The Best',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected = !_isSelected; // Debug print
                        });
                      },
                      child: LoginButton(
                        title: 'Login',
                        isSelected: _isSelected,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected = !_isSelected; // Debug print
                        });
                      },
                      child: LoginButton(
                        title: 'Register',
                        isSelected: !_isSelected,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const SocialButton(
                  imagePath: 'assets/svg/icons8-google.svg',
                  title: 'Continue with Google',
                  buttonColor: Pallete.white,
                ),
                const SocialButton(
                  imagePath: 'assets/svg/icons8-facebook.svg',
                  title: 'Continue with Facebook',
                  buttonColor: Pallete.blue,
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/LoginCoffee.png',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(
                      builder: (context) {
                        return const MainMenuScreen();
                      },
                    ));
                  },
                  splashColor: Colors.transparent, // Remove splash color
                  highlightColor: Colors.transparent, // Remove highlight color
                  child: const SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Skip!',
                        style: TextStyle(
                          color: Pallete.white,
                          fontSize: 20,
                          shadows: [
                            Shadow(
                              color: Pallete.white,
                              blurRadius: 40,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
