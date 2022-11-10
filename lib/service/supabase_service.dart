import 'package:flutter/material.dart';
import 'package:sudarapp/screens/homepage.dart';
import 'package:sudarapp/service/supabase_config.dart';
import 'package:supabase/supabase.dart';

class AuthenticationService {
  static Future<void> signup(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      var response = await SupasbaseCredentials.supabaseClient.auth
          .signUp(password: password, email: email);
      if (response.user != null) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  content: Text('SignUp success'),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        },
                        child: Text('Close'))
                  ],
                ));
      }
    } on AuthException catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Error Message'),
                content: Text(
                  e.message.toString(),
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'))
                ],
              ));
    }
  }

  static Future<void> signin(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      var response =
          await SupasbaseCredentials.supabaseClient.auth.signInWithPassword(
        password: password,
        email: email,
      );
      if (response.user != null) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  content: Text('SignIn success'),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomePage()));
                        },
                        child: Text('Close'))
                  ],
                ));
      }
    } on AuthException catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Error Message'),
                content: Text(
                  e.message.toString(),
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'))
                ],
              ));
    }
  }
}
