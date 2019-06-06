import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:big_music_theory/modules.dart';

void main() => runApp( Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              bottom: MediaQuery.of(context).size.height/2,
              child: Image.asset(
                "assets/images/martian_surface.png",
              ),
            ),

            Positioned(
              top: 100,
              left: 32,
              child: Text('COMEÇAR',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),

            Positioned(
              top: 190,
              child: Container(
                padding: EdgeInsets.all(32),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color(0xff263341),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    TextField(
                      style: TextStyle(
                        color: Colors.white
                        ),
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xff8DB646)),
                        ),
                        hintText: 'Nome',
                        hintStyle: TextStyle(
                            color: Colors.white
                          )
                      )
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 62),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xff8DB646)),
                          ),
                          hintText: 'Senha',
                          hintStyle: TextStyle(
                            color: Colors.white
                          )
                        ),
                      ),
                    ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child:  Container(
                      height: 45,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xff8DB646),
                        borderRadius: BorderRadius.all(
                          Radius.circular(32)
                        ),
                      ),
                      child: Center(
                        child: Text('ENTRAR',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                    Container(height: 8,),
                    Text("Esqueceu sua senha?",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
