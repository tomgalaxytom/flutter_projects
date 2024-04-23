import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lunch_app/views/prototype/widgets/category_selector.dart';
import 'package:lunch_app/views/prototype/widgets/food_lister.dart';
import 'package:lunch_app/views/prototype/widgets/options_selector.dart';

import '../../model/prototype/category.dart';
import '../../screens/account.dart';
import '../../screens/settings.dart';
import 'bottom_nav/bottom_nav.dart';
import 'widgets/drink_lister.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Category? _selectedCategory;

  @override
  void initState() {
    super.initState();
    _selectedCategory = Category(
        "All", Icons.home); // Set "All" as the initial selected category
  }

  Widget _buildCategoryWidget() {
    if (_selectedCategory!.title == "All") {
      return const FoodLister(); // Display FoodLister if All category is selected
    } else if (_selectedCategory!.title == "Drinks") {
      return const DrinkLister(); // Display DrinkLister if Drinks category is selected
    } else {
      return const FoodLister(); // Display FoodLister by default
    }
  }

  Drawer getNavDrawer(BuildContext context) {
    var headerChild = const DrawerHeader(child: Text("Header"));
    var aboutChild = const AboutListTile(
        applicationName: "Application Name",
        applicationVersion: "v1.0.0",
        applicationIcon: Icon(Icons.adb),
        icon: Icon(Icons.info),
        child: Text("About"));

    ListTile getNavItem(var icon, String s, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(s),
        onTap: () {
          setState(() {
            // pop closes the drawer
            Navigator.of(context).pop();
            // navigate to the route
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.settings, "Settings", SettingsScreen.routeName),
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_box, "Account", AccountScreen.routeName),
      aboutChild
    ];

    ListView listView = ListView(children: myNavChildren);

    return Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SvgPicture.asset(
            "assets/nav/drawer.svg",
            width: 25,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
      ),
      endDrawer: getNavDrawer(context),
      body: Column(
        children: [
          OptionsSelector(
            onChange: (x) {},
          ),
          CategorySelector(
            onChange: (cat) {
              setState(() {
                _selectedCategory = cat;
              });
            },
          ),
          Expanded(
            child: _buildCategoryWidget(),
          ),
          const BottomNav(),
        ],
      ),
    );
  }
}
