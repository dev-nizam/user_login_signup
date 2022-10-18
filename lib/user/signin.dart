import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:user_login_signup/user/Signup.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: mHeight,
                width: mWidth,
                decoration: BoxDecoration(
                    color: Color(0xff1c2c43),
                    image: DecorationImage(
                        image: AssetImage(""),
                        fit: BoxFit.fill)),
                child: Column(
                  children: [
                    SizedBox(
                      height: mHeight * .35,
                    ),
                    Container(
                      height: mHeight * .07,
                      width: mWidth * .8,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.white),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mHeight * .025,
                    ),
                    Container(
                      height: mHeight * .07,
                      width: mWidth * .8,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: 'password',
                          labelStyle: TextStyle(color: Colors.white),
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mHeight * .01,
                    ),
                    Center(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: mHeight * .03,
                    ),
                    Container(
                      height: mHeight * .07,
                      width: mWidth * .8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "OR",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        "Connect with",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: mWidth * .4,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          backgroundImage: NetworkImage(
                              "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.6SBjLx0EwE_vEpABop-U5wHaHa%26pid%3DApi&f=1&ipt=d9dfe2dbcb532b64e4795204e83907e29393e83fb57ea1d588e3bab3c0094e79&ipo=images"),
                        ),
                        SizedBox(
                          width: mWidth * .01,
                        ),
                        Container(
                          height: mHeight * .035,
                          width: mWidth * .01,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: mWidth * .01,
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 18,
                            child: Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.blue,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: mHeight * .12,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: mWidth * .26,
                        ),
                        Text(
                          "Don't have Account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (ctx) => Signup()));
                          },
                          child: Text(
                            "  Sign up",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
