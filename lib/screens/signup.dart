import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sudarapp/screens/signin.dart';

import '../service/supabase_service.dart';

class SignupPage extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          elevation: 7,
          child: SingleChildScrollView(
            child: Container(
              width: 500,
              height: 650,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 90.0, vertical: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      style: GoogleFonts.ptSans(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Welcome back to sudar!',
                      style: GoogleFonts.ptSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: 'Enter Email',
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter Username',
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password',
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.visibility)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        AuthenticationService.signup(
                          email: emailController.text,
                          password: passwordController.text,
                          context: context,
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff6371DE),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.ptSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                        height: 50,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Expanded(child: Divider()),
                      Text("  Or  "),
                      Expanded(child: Divider()),
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              )),
                          width: 50,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png'),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              )),
                          width: 50,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/2048px-Microsoft_logo.svg.png'),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              )),
                          width: 50,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/174/174857.png'),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don’t have an account? '),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SigninPage()));
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
