import 'package:flutter/material.dart';

class FromPage extends StatefulWidget {
  const FromPage({Key? key}) : super(key: key);
  static const String id = 'from_page';

  @override
  _FromPageState createState() => _FromPageState();
}

class _FromPageState extends State<FromPage> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (input) =>
                    !input!.contains("@") ? 'Please enter a vaild email' : null,
                onSaved: (input) => _email = input!,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                validator: (input) =>
                    input!.length < 6 ? 'Must be at least 6 characters' : null,
                onSaved: (input) => _password = input!,
              ),
            ),
            MaterialButton(
              onPressed: _doSignIn,
              color: Colors.blue,
              child: Text("Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
