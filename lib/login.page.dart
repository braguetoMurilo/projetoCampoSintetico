import 'package:flutter/material.dart';
import 'package:projeto_campo/reset-password.page.dart';
import 'package:projeto_campo/who.are.you.dart';
import 'package:projeto_campo/choose.field.dart';
import 'package:projeto_campo/field.research.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/futebool.jpg"),
              fit: BoxFit.cover,
            )),
        padding: EdgeInsets.only(
          top: 35.0,
          left: 40.0,
          right: 40.0,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              child: Image.asset(
                "images/logo.png",
                fit: BoxFit.none,
              ),
              width: 128.0,
              height: 128.0,
            ),
            SizedBox(
              height: 40.0,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail ou Nome de usuário",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 25.0,
                ),
              ),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 25.0,
                ),
              ),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Container(
              height: 40.0,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Recuperar Senha",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 60.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DropDown(),
                        ),
                      );
                    },
                  )),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 60.0,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Facebook",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        /* Container(
                      child: SizedBox(
                        child: Image.asset("images/icon.png"),
                        height: 28,
                        width: 28,
                      ),
                    ),*/
                      ],
                    ),
                    onPressed: () {},
                  )),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 40.0,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WhoAreYou()
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}