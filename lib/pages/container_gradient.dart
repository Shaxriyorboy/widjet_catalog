import 'package:flutter/material.dart';

class ContainerGradient extends StatefulWidget {
  const ContainerGradient({Key? key}) : super(key: key);
  static const String id= 'containew_gradient';

  @override
  _ContainerGradientState createState() => _ContainerGradientState();
}

class _ContainerGradientState extends State<ContainerGradient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('PDP'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //gradient
              Container(
                height: 250,
                width: 250,
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
                      begin: Alignment.bottomLeft,
                      end: Alignment.topLeft,
                      colors: [
                        Colors.black.withOpacity(0.99),
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.4),
                      ],
                    ),
                  ),
                ),
              ),
              //shape
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 200,
                height: 50,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text('Sign Up'),
                ),
              ),
              //GestureDetector
              SizedBox(height: 20,),
              Container(
                child: GestureDetector(
                  excludeFromSemantics: false,
                  onTap: () {
                    print('salom');
                  },
                  child: Text('Click me'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.5),
                ),
                width: double.infinity,
                child: TextField(
                  onChanged: (value) {},
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                  decoration: InputDecoration(
                    hintText: 'Phone',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.phone_iphone,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
