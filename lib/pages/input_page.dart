import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  static const String id = "input_page";

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController _textEditingController = TextEditingController();
  bool isNotHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Text Filed'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: TextField(
                controller: _textEditingController,
                style: TextStyle(color: Colors.black, fontSize: 20),
                keyboardType: TextInputType.visiblePassword,
                obscureText: isNotHide,
                // obscuringCharacter: "*",
                onSubmitted: (text){
                  print(text);
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'password',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 17),
                    prefixIcon: Icon(Icons.lock, color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isNotHide ? Icons.visibility : Icons.visibility_off, color: Colors.grey,),
                      onPressed: () {
                        setState(() {
                          isNotHide = !isNotHide;
                        });
                      },
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
