import 'package:fiverr_cachemoney/auth/sign_up.dart';
import 'package:fiverr_cachemoney/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // Initially password is obscure
  bool _obscureText = true;

  String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   leading: Icon(
        //     Icons.clear,
        //     color: Colors.grey,
        //   ),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.only(right: 10),
        //       child: Icon(
        //         FontAwesomeIcons.solidQuestionCircle,
        //         color: Colors.grey,
        //       ),
        //     )
        //   ],
        // ),
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back!',
                  style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                // Text(
                //   'Sign in to your account',
                //   style: TextStyle(
                //     color: Colors.grey.shade800,
                //     fontSize: 16,
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    decoration: BoxDecoration(/*color: Colors.grey.shade300,*/ borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Email',
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: new InputDecoration(border: InputBorder.none, focusedBorder: InputBorder.none, enabledBorder: InputBorder.none, errorBorder: InputBorder.none, disabledBorder: InputBorder.none, contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15), /*hintText: 'email@example.com',*/ hintStyle: TextStyle(color: Colors.black87)),
                        )),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 50,
                    decoration: BoxDecoration(/*color: Colors.grey.shade300,*/ borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Password',
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            // height: 50, width: 200,

                            child: TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          obscureText: _obscureText,
                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 15, right: 15),
                              //   hintText: "********",
                              suffixIcon: IconButton(
                                onPressed: () => _toggle(),
                                icon: Icon(
                                  _obscureText ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                                  color: _obscureText ? Colors.grey : Colors.black,
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                ),
                              ),
                              hintStyle: TextStyle(color: Colors.black87)),
                        )),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                // Align(
                //     alignment: Alignment.centerRight,
                //     child: Text(
                //       'Forget password?',
                //       style: TextStyle(color: Colors.black87),
                //     )),
                // SizedBox(
                //   height: 10,
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Sign Up?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
