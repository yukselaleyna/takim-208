import 'package:fashion/utils/app_colors.dart';
import 'package:fashion/views/saved_page.dart';
import 'package:fashion/views/home_page.dart';
import 'package:fashion/views/shopping_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedItem = 2;
  List<Widget> listOfItems = [
    const ShoppingPage(),
    const SavedPage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 75,
        height: 75,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: AppColors.kPink,
            splashColor: AppColors.kPink,
            onPressed: () {
              setState(() {
                _selectedItem = 2;
              });
            },
            child: const Icon(Icons.home),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 400,
            height: 200,
            child: Image.asset(
              "assets/logo.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          _selectedWidget(_selectedItem),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedItem = value;
          });
        },
        selectedItemColor: AppColors.kBackGround,
        unselectedItemColor: AppColors.kBackGround,
        backgroundColor: AppColors.kPink,
        items: const [
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 40,
                child: Icon(
                  Icons.shopping_bag_rounded,
                  color: AppColors.kBackGround,
                ),
              ),
              label: "Shopping",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 40,
              child: Icon(
                Icons.saved_search_outlined,
                color: AppColors.kBackGround,
              ),
            ),
            label: "Saved",
          )
        ],
      ),
    );
  }

  Widget _selectedWidget(int index) {
    return listOfItems[index];
  }
}
