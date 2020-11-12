import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:Mirror/main.dart';
import 'package:wave/wave.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 650.0,
            child: RotatedBox(
              quarterTurns: 2,
              child: WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [Colors.deepPurple.shade400, Colors.deepPurple.shade200],
                    [Colors.deepPurple.shade400, Colors.deepPurple.shade400],
                  ],
                  durations: [19440, 10800],
                  heightPercentages: [0.20, 0.25],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.topRight,
                ),
                waveAmplitude: 0,
                size: Size(
                  double.infinity,
                  double.infinity,
                ),
              ),
            ),
          ),
          ListView(
            children: [
              Container(
                height: 400.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "MIRROR",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                      elevation: 11.0,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black26,
                          ),
                          suffixIcon: Icon(
                            Icons.check_circle,
                            color: Colors.black26,
                          ),
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.black26),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                      elevation: 11.0,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_open,
                            color: Colors.black26,
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black26),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        color: Colors.pink.shade400,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => MyHomePage(),
                            ),
                          );
                        },
                      ),
                    ),
                    Text(
                      "Forgot your password",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("or, connect with"),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        SizedBox(width: 20.0),
                        Expanded(
                          child: RaisedButton(
                            child: Text("Facebook"),
                            onPressed: () {},
                            textColor: Colors.white,
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          child: RaisedButton(
                            child: Text("Twitter"),
                            onPressed: () {},
                            textColor: Colors.white,
                            color: Colors.indigo,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont have an account"),
                        FlatButton(
                          onPressed: () {},
                          child: Text("Sign up"),
                          textColor: Colors.indigo,
                        ),
                      ],
                    ),
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
