import 'package:flutter/material.dart';
import 'package:pet_assist/models/user.dart';
import 'package:pet_assist/services/auth.dart';
import 'package:pet_assist/ui/home/page.dart';
import 'package:pet_assist/ui/login/page.dart';
import 'package:pet_assist/ui/register/page.dart';
import 'package:provider/provider.dart';

import 'login/page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);
    print(user);
    if (user == null) {
      return RegisterPage();
    } else {
      return HomePage();
    }

    // final AuthService authService = AuthService();
    // return StreamBuilder(
    //   stream: authService.authStateChanges,
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.active) {
    //       final user = snapshot.data;
    //       user == null ? RegisterPage() : HomePage();
    //     }
    //     return Scaffold(
    //       body: Center(
    //         child: CircularProgressIndicator(),
    //       ),
    //     );
    //   },
    // );
  }
}
