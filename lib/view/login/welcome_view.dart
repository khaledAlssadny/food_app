/*import 'package:flutter/material.dart';
import 'package:two/common/color_extension.dart';

import '../../common_widget/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/img/welcome_top_shape.png",
              ),
              Image.asset(
                "assets/img/app_logo.png",
                width: media.width * .40,
                height: media.height * .40,
                fit: BoxFit.contain,
              ),
            ],
          ),
          Text(
            "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          // SizedBox(
          //   height: media.width * 0.1,
          // ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(title: "Login", onPressed: () {})),
          SizedBox(
            height: media.width * 0.03,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                  title: "Create an Account",
                  type: RoungButtonType.textPrimary,
                  onPressed: () {})),
        ],
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:food_app1/view/login/sign_up_view.dart';
import '../../common/color_extension.dart';
import '../../view/login/login_view.dart';

import '../../common_widget/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/img/welcome_top_shape.png",
                  width: media.width,
                  height: media.height * 0.6,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: media.height * 0.01,
                  child: Image.asset(
                    "assets/img/app_logo.png",
                    width: media.width * 0.5,
                    height: media.height * 0.2,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            SizedBox(height: media.height * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: media.height * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Login",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                },
              ),
            ),
            SizedBox(height: media.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Create an Account",
                type: RoungButtonType.textPrimary,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpView()));
                },
              ),
            ),
            SizedBox(height: media.height * 0.05),
          ],
        ),
      ),
    );
  }
}
