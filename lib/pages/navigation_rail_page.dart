import 'dart:math';

import 'package:flutter/material.dart';

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({Key? key}) : super(key: key);
  static const String id = 'navigator_rail_page';

  @override
  _NavigationRailPageState createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("NavigationRail"),
        ),
        // body: Row(
        //   children: [
        //     NavigationRail(
        //       selectedIndex: _selectedIndex,
        //       onDestinationSelected: (int index) {
        //         setState(() {
        //           _selectedIndex = index;
        //         });
        //       },
        //       labelType: NavigationRailLabelType.selected,
        //       destinations: [
        //         NavigationRailDestination(
        //           icon: Icon(Icons.favorite_border),
        //           label: Text('First'),
        //           selectedIcon: Icon(Icons.favorite),
        //         ),
        //         NavigationRailDestination(
        //           icon: Icon(Icons.bookmark_border),
        //           label: Text('Second'),
        //           selectedIcon: Icon(Icons.book),
        //         ),
        //         NavigationRailDestination(
        //           icon: Icon(Icons.star_border),
        //           label: Text('Third'),
        //           selectedIcon: Icon(Icons.star),
        //         ),
        //       ],
        //     ),
        //     // VerticalDivider(
        //     //   thickness: 1,
        //     //   width: 1,
        //     // ),
        //     Expanded(
        //       child: Center(
        //         child: Text('selectedIndex: $_selectedIndex'),
        //       ),
        //     ),
        //   ],
        // ),
        body: Row(
          children: [
            NavigationRail(
              leading: CircleAvatar(
                // radius: 30,
                backgroundImage: AssetImage('assets/images/im_1.jpg'),
              ),
              backgroundColor: Colors.blueGrey.shade800,
              destinations: const [
                NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 120,horizontal: 10),
                  label: SizedBox.shrink(),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Icon(Icons.tune_outlined,color: Colors.yellowAccent,),
                  ),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Icon(Icons.tune_outlined,color: Colors.white,)
                  ),
                ),
                NavigationRailDestination(
                  label: SizedBox.shrink(),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Popular",
                      style: TextStyle(color: Colors.yellowAccent, decoration: TextDecoration.underline, fontSize: 15),
                    ),
                  ),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Popular",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Favourltes',
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  label: SizedBox.shrink(),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text('Favourltes',style: TextStyle(color: Colors.white, fontSize: 15),),
                  ),
                ),
                NavigationRailDestination(
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Popular',
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  label: SizedBox.shrink(),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text('Popular',style: TextStyle(color: Colors.white, fontSize: 15),),
                  ),
                ),
                NavigationRailDestination(
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      'Popular',
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  label: SizedBox.shrink(),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text('Popular',style: TextStyle(color: Colors.white, fontSize: 15),),
                  ),
                ),
              ],
              selectedIndex: _selectedIndex,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Navigation rail',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
