import 'package:flutter/material.dart';
import 'package:widjet_catalog/pages/vazifa_3_task.dart';

class Vazifa2TaskPage extends StatefulWidget {
  const Vazifa2TaskPage({Key? key}) : super(key: key);
  static const String id = 'vazifa_2_task_page';

  @override
  _Vazifa2TaskPageState createState() => _Vazifa2TaskPageState();
}

class _Vazifa2TaskPageState extends State<Vazifa2TaskPage> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  _doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Welcome');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Instagram',
                style: TextStyle(fontSize: 35),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  validator: (input) => !input!.contains("@")
                      ? 'Please enter a valid email'
                      : null,
                  onSaved: (input) => _email = input!,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  validator: (input) => input!.length < 6
                      ? 'Must be at least 6 characters'
                      : null,
                  onSaved: (input) => _password = input!,
                  obscureText: true,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: MaterialButton(
                  onPressed: _doSignIn,
                  color: Colors.blue,
                  child: Text("Log In"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: ListTile(
                  title: Text(
                    "Don't have an account?",
                    textAlign: TextAlign.right,
                  ),
                  trailing: Container(
                    width: 90,
                    //  Text(
                    //   'sing up',
                    //   textAlign: TextAlign.left,
                    //   style: TextStyle(fontWeight: FontWeight.bold),
                    // ),
                    child: GestureDetector(
                      excludeFromSemantics: false,
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(Vazifa3TaskPage.id);
                      },
                      child: Text(
                          'sing up',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
