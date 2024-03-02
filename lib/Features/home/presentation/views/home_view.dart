import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/Features/booking/presentation/view/book_view.dart';
import 'package:restaurant_booking_app/constants.dart';

import 'widgets/home_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedTab = 0;

  List pages = const [
    HomeBody(),
    BookView(),
    HomeBody(),
  ];

  changeTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor:
          selectedTab == 1 ? const Color(0xffFFFFFF): const Color(0xffF6F6F6) ,
      body: pages[selectedTab],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xffE5E5E5),
                blurRadius:  10,
              ),
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xffFFFFFF),
            currentIndex: selectedTab,
            selectedItemColor: kPrimaryColor,
            onTap: (index) => changeTab(index),
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/home_icon.png',
                      color:
                          selectedTab == 0 ? kPrimaryColor : kSecondaryColor),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/book_icon.png',
                      color:
                          selectedTab == 1 ? kPrimaryColor : kSecondaryColor),
                  label: ''),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/user_icon.png',
                    color: selectedTab == 2 ? kPrimaryColor : kSecondaryColor),
                label: '',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
