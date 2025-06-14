import 'package:flutter/material.dart';
import 'package:food_app1/common/color_extension.dart';
import 'package:food_app1/common_widget/tab_button.dart';
import 'package:food_app1/view/home/home_view.dart';
import 'package:food_app1/view/offer/offer_view.dart';
import 'package:food_app1/view/profile/profile_view.dart';

import '../menu/menu_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selctTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomeView();
  @override
  Widget build(BuildContext context) {
    /* - scaffold 
    - body -> pageStorage
    - floating action button location
    - floating action button -> sizedbox and its child .
    - floating action button -> onPressed , shape , background ,child
    - bottomNavigationBar -> Row (Tab buttons)
    */

    return Scaffold(
        body: PageStorage(bucket: storageBucket, child: selectPageView),
        backgroundColor: const Color(0xfff5f5f5),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: SizedBox(
          width: 60,
          height: 60,
          child: FloatingActionButton(
            onPressed: () {
              if (selctTab != 2) {
                selctTab = 2;
                selectPageView = HomeView(); //HomeView();
              }
              if (mounted) {
                setState(() {});
              }
            },
            shape: const CircleBorder(),
            backgroundColor:
                selctTab == 2 ? TColor.primary : TColor.placeholder,
            child: Image.asset(
              "assets/img/tab_home.png",
              width: 30,
              height: 30,
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            surfaceTintColor: TColor.white,
            shadowColor: Colors.black,
            elevation: 1,
            notchMargin: 12,
            height: 64,
            shape: const CircularNotchedRectangle(),
            child: SafeArea(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  TabButton(
                      title: "Menu",
                      icon: "assets/img/tab_menu.png",
                      onTap: () {
                        if (selctTab != 0) {
                          selctTab = 0;
                          selectPageView = MenuView(); //MenuView();
                        }
                        if (mounted) {
                          setState(() {});
                        }
                      },
                      isSelected: selctTab == 0),
                  TabButton(
                      title: "Offer",
                      icon: "assets/img/tab_offer.png",
                      onTap: () {
                        if (selctTab != 1) {
                          selctTab = 1;
                          selectPageView = OfferView(); //OfferView();
                        }
                        if (mounted) {
                          setState(() {});
                        }
                      },
                      isSelected: selctTab == 1),
                  const SizedBox(
                    width: 40,
                    height: 40,
                  ),
                  TabButton(
                      title: "Profile",
                      icon: "assets/img/tab_profile.png",
                      onTap: () {
                        if (selctTab != 3) {
                          selctTab = 3;
                          selectPageView = ProfileView(); // ProfileView();
                        }
                        if (mounted) {
                          setState(() {});
                        }
                      },
                      isSelected: selctTab == 3),
                  TabButton(
                      title: "More",
                      icon: "assets/img/tab_more.png",
                      onTap: () {
                        if (selctTab != 4) {
                          selctTab = 4;
                          selectPageView = Container(); // MoreView();
                        }
                        if (mounted) {
                          setState(() {});
                        }
                      },
                      isSelected: selctTab == 4),
                ]))));
  }
}
