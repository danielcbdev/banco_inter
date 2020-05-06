import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String conta = "955898-8";
  String nome = "WARLEY";
  String sobrenome = "VINICIUS";

  siglas() {
    return nome.substring(0, 1) + sobrenome.substring(0, 1);
  }

  @override
  Widget build(BuildContext context) {
    final list = [Color(0xFFFF6D08), Color(0xFFF87C08)];

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Center(
                child: Container(
                  height: 150,
                  width: 130,
                  child: Image.asset(
                    'assets/images/banco_inter_logo.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: list,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 230),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        bottom: 16, top: 25, left: 15, right: 15),
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFFf5f6fa),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.none,
                                  ),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25.0,
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      siglas(),
                                      style: TextStyle(
                                          color: Color(0xFFFF6D08),
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  "$nome $sobrenome\n$conta",
                                  style: TextStyle(fontSize: 16.5),
                                ),
                              ],
                            ),
                            Spacer(),
                            OutlineButton(
                              onPressed: () {},
                              child: Text(
                                "ALTERAR".toUpperCase(),
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 230,
                              child: FlatButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(13.5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                color: Color(0xFFFF6D08),
                                textColor: Colors.white,
                                child: Text(
                                  "ENTRAR",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 115,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFFf5f6fa),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: <Widget>[
                        Center(
                          child: Container(
                            height: 50,
                            child: Image.asset(
                              'assets/images/i-safe.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.none,
                                  ),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25.0,
                                child: Container(
                                  child: Center(
                                    child: Icon(
                                      Icons.more_horiz,
                                      color: Color(0xFFFF6D08),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Gerar",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[600]),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 115,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFFf5f6fa),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: <Widget>[
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            height: 40,
                            child: Image.asset(
                              'assets/images/interpag.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.none,
                                  ),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25.0,
                                child: Container(
                                  child: Center(
                                    child: Icon(
                                      Icons.more_horiz,
                                      color: Color(0xFFFF6D08),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Pagar",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[600]),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    style: BorderStyle.none,
                                  ),
                                  shape: BoxShape.circle),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25.0,
                                child: Container(
                                  child: Center(
                                    child: Icon(
                                      Icons.more_horiz,
                                      color: Color(0xFFFF6D08),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Receber",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[600]),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
