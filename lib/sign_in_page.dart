import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background_image(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(40, 60, 40, 20),
                  alignment: Alignment.center,
                  child: Text('Hello Again !',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Welcome back you\'ve been missed!',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(fontSize: 25)),
                  ),
                ),

                //! Textbox

                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter username',
                      labelStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 56, 52, 52),
                              fontSize: 16.0)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      contentPadding: const EdgeInsets.all(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                  child: TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(255, 56, 52, 52),
                                fontSize: 16.0)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        contentPadding: const EdgeInsets.all(20),
                        suffixIcon: const Icon(Icons.remove_red_eye)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 25),
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Recover Password',
                        style: GoogleFonts.beVietnamPro(
                            textStyle: const TextStyle(color: Colors.black))),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 60,
                  width: 330,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 51, 51, 178),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.all(20)),
                    onPressed: () {},
                    child: Text('Sign In',
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 235, 230, 230)))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Or continue with ',
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(color: Colors.black)),
                      )
                    ],
                  ),
                ),
                //goggle , apple and facebook icons.
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: const Color.fromARGB(82, 103, 106, 116)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset('assets/google.png')),
                      Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: const Color.fromARGB(82, 103, 106, 116)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset(
                            'assets/apple.png',
                            color: const Color.fromARGB(255, 0, 0, 0),
                          )),
                      Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: const Color.fromARGB(82, 103, 106, 116)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset('assets/facebook.png')),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(color: Colors.black)),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(5)),
                      onPressed: () {},
                      child: Text(
                        'Register now',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            textStyle: const TextStyle(color: Colors.black)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
