import 'package:donut_ui/tab_pages/burger_tab.dart';
import 'package:donut_ui/tab_pages/donut_tab.dart';
import 'package:donut_ui/tab_pages/pancake_tab.dart';
import 'package:donut_ui/tab_pages/pizza_tab.dart';
import 'package:donut_ui/tab_pages/smoothie_tab.dart';
import 'package:donut_ui/utils/palette.dart';
import 'package:donut_ui/utils/styles.dart';
import 'package:donut_ui/widgets/tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <TabWidget> tabs = [
    const TabWidget(iconPath: 'lib/icons/icons/burger.png'),
    const TabWidget(iconPath: 'lib/icons/icons/donut.png'),
    const TabWidget(iconPath: 'lib/icons/icons/pancakes.png'),
    const TabWidget(iconPath: 'lib/icons/icons/pizza.png'),
    const TabWidget(iconPath: 'lib/icons/icons/smoothie.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Palette.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: IconButton(
                icon: Icon(
                  color: Palette.inkDarker,
                  Icons.menu,
                  size: 36,
                ),
                onPressed: () {
                  // Add the onPressed function
                },
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: IconButton(
                    icon: Icon(
                      color: Palette.black,
                      Icons.person,
                      size: 36,
                    ),
                    onPressed: () {
                      // Add the onPressed function
                    }
                  ),
              ),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical:18.0, horizontal: 36.0),
                child: Row(children: [
                  Text('I want to ', style: Styles.body),
                  Text('EAT!', style: Styles.heading3)
                  ]),
              ),

              const SizedBox(height: 24), 

              TabBar(tabs: tabs),

              Expanded(child: TabBarView(
                children: [
                  BurgerTab(),
                  DonutTab(),
                  PancakeTab(),
                  PizzaTab(),
                  SmoothieTab()
                ]
              ) 
              )
            ],
          )
          ),
    );
  }
}
