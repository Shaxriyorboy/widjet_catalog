import 'dart:math';

import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDialPage extends StatefulWidget {
  const SpeedDialPage({Key? key}) : super(key: key);
  static const String id = 'speed_dial_page';

  @override
  _SpeedDialPageState createState() => _SpeedDialPageState();
}

class _SpeedDialPageState extends State<SpeedDialPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // body: CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       expandedHeight: 220,
        //       floating: true,
        //       // pinned: true,
        //       snap: true,
        //       elevation: 50,
        //       backgroundColor: Colors.grey,
        //       flexibleSpace: FlexibleSpaceBar(
        //         centerTitle: true,
        //         title: Text('Pdp Online'),
        //         background: Image(
        //           image: AssetImage('assets/images/im_1.jpg'),
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ),
        //     SliverList(
        //       delegate: SliverChildListDelegate(
        //         _buildList(50),
        //       ),
        //     ),
        //   ],
        // ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 220,
              floating: false,
              snap: false,
              pinned: true,
              elevation: 50,
              backgroundColor: Colors.blueGrey.shade700,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Hotel'),
                background: Image(
                  image: AssetImage('assets/images/im_1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context,index){
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                      child: ListTile(
                        title: Text('Hotel ${index+1}'),
                        subtitle: Text('Cost: \$${(index+1)*100+index+12}'),
                        trailing: Icon(Icons.phone),
                      ),
                    );
                  },
                childCount: 20,
              ),
            ),
          ],
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22.0),
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          onOpen: () => print("Opening dial"),
          onClose: () => print('Close dial'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 20,
          spaceBetweenChildren: 10,
          shape: CircleBorder(),
          children: [
            SpeedDialChild(
              child: Icon(Icons.accessibility),
              backgroundColor: Colors.red,
              label: 'First',
              labelStyle: TextStyle(fontSize: 18),
              onTap: () => print('First child'),
            ),
            SpeedDialChild(
              child: Icon(Icons.brush),
              backgroundColor: Colors.blue,
              label: 'Second',
              labelStyle: TextStyle(fontSize: 18),
              onTap: () => print('Second child'),
            ),
            SpeedDialChild(
              child: Icon(Icons.keyboard_voice),
              backgroundColor: Colors.green,
              label: 'Third',
              labelStyle: TextStyle(fontSize: 18),
              onTap: () => print('Third child'),
            ),
          ],
        ),
        bottomNavigationBar: FancyBottomNavigation(
          barBackgroundColor: Colors.white,
          textColor: Colors.black,
          inactiveIconColor: Colors.black,
          activeIconColor: Colors.white,
          onTabChangedListener: (int position) {
            print(position);
          },
          tabs: [
            TabData(iconData: Icons.home, title: 'Home'),
            TabData(iconData: Icons.search, title: 'Search'),
            TabData(iconData: Icons.account_circle_outlined, title: 'Profil'),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildList(int count) {
    List<Widget> items = [];
    for (int i = 0; i < count; i++) {
      items.add(_itemList(i));
    }
    return items;
  }

  Widget _itemList(int i) {
    return Container(
      height: 50,
      child: Center(
        child: Text('Item ${i.toString()}'),
      ),
    );
  }
}
