import 'package:flutter/material.dart';

class VazifaPage extends StatefulWidget {
  const VazifaPage({Key? key}) : super(key: key);
  static const String id = 'vazifa_page';

  @override
  _VazifaPageState createState() => _VazifaPageState();
}

class _VazifaPageState extends State<VazifaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Vazifa'),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/im_1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.9),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20, left: 25),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'PDP Online',
                      style: TextStyle(color: Colors.white, fontSize: 33),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/im_1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.9),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20, left: 25),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'PDP Online',
                      style: TextStyle(color: Colors.white, fontSize: 33),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/im_1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.9),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20, left: 25),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'PDP Online',
                      style: TextStyle(color: Colors.white, fontSize: 33),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
