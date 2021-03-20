import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.west_sharp,
                color: Colors.grey.shade900,
              ),
            ),
          ),
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Back',
              style: TextStyle(color: Colors.grey.shade900),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                FontAwesomeIcons.solidQuestionCircle,
                color: Colors.grey.shade900,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Create an account so you can order your favorite food even faster',
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Username',
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
                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 11, top: 11, right: 15),
                              hintText: "justin_86",
                              hintStyle: TextStyle(color: Colors.black87)),
                        )),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15)),
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
                            // height: 50, width: 200,

                            child: TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 11, top: 11, right: 15),
                              hintText: "justin_86@example.com",
                              hintStyle: TextStyle(color: Colors.black87)),
                        )),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15)),
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
                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(top: 15, right: 15),
                              hintText: "********",
                              suffixIcon: Icon(
                                FontAwesomeIcons.eye,
                                color: Colors.grey,
                              ),
                              hintStyle: TextStyle(color: Colors.black87)),
                        )),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Your password must be 8 or more characters long & contains a mix of uper & lower case letters, numbers & symbols',
                      style: TextStyle(color: Colors.black87),
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Create an account',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'By signing up, you\'re agree to our',
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Terms of Use',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                              // decoration: TextDecoration.underline,
                              ),
                        ),
                        Text(
                          ' and ',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,

                            // decoration: TextDecoration.underline,
                          ),
                        ),
                        Text(
                          'privacy Policy',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                              // decoration: TextDecoration.underline,
                              ),
                        ),
                      ],
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
