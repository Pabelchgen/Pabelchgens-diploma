import 'package:flutter/material.dart';
import 'package:pet_assist/services/auth.dart';

/// Entrypoint example for various sign-in flows with Firebase.
class RegisterPage extends StatefulWidget {
  /// The page title.
  final String title = 'Sign Up';

  @override
  State<StatefulWidget> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Builder(builder: (BuildContext context) {
        return Form(
            key: _formKey,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: const Text(
                        'Sign in with email and password',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      alignment: Alignment.center,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: (String value) {
                        if (value.isEmpty) return 'Please enter some text';
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(labelText: 'Password'),
                      validator: (String value) {
                        if (value.isEmpty) return 'Please enter some text';
                        return null;
                      },
                      obscureText: true,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      alignment: Alignment.center,
                      child: RaisedButton(
                        child: Text("Sign In"),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            authService.createUserWithEmailAndPassword(
                                _emailController.text,
                                _passwordController.text);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ));
      }),
    );
  }
}
