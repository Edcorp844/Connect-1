import 'package:connect/controllers/core/account.dart';
import 'package:connect/controllers/core/home.dart';
import 'package:connect/controllers/core/marketplace.dart';
import 'package:connect/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'controllers/core/news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextcolor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          inactiveColor: Colors.orange,
          activeColor: Colors.orange,
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(CupertinoIcons.house_fill),
                icon: Icon(
                  CupertinoIcons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.storefront_rounded),
                icon: Icon(Icons.storefront),
                label: 'Market Place'),
            BottomNavigationBarItem(
                activeIcon: Icon(CupertinoIcons.news_solid),
                icon: Icon(
                  CupertinoIcons.news,
                ),
                label: 'News'),
            BottomNavigationBarItem(
                activeIcon: Icon(CupertinoIcons.person_fill),
                icon: Icon(
                  CupertinoIcons.person,
                ),
                label: 'Account')
          ]),
      tabBuilder: ((context, index) {
        switch (index) {
          case 0:
            return const HomePage();
          case 1:
            return const MarketPlace();
          case 2:
            return const NewsPage();
          case 3:
          default:
            return const AccountPage();
        }
      }),
    );
  }
}
