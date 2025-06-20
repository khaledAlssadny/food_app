import 'package:flutter/material.dart';

import '../../view/login/welcome_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 3));
    // welcomePage();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const WelcomeView()));
  }

  /*void welcomePage(){

    if (Globs.udValueBool(Globs.userLogin)) {
       Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MainTabView()));
    }else{
       Navigator.push(
        context, MaterialPageRoute(builder: (context) => const WelcomeView()));
    }
  }*/
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/img/splash_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/img/app_logo.png",
            width: media.width * 0.55,
            height: media.height * 0.55,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
