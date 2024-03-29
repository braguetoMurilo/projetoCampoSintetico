import 'package:flutter/material.dart';
import 'field.research.dart';
import 'package:projeto_campo/models/user_manager.dart';

class MultiFactor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white30,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black54,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/futebool.jpg"),
              fit: BoxFit.cover,
            )),
        padding: EdgeInsets.only(
          top: 0,
          left: 40.0,
          right: 40.0,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 200.0,
              child: Image.asset(
                "images/iconSenha.png",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Autenticação de multi-fator",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Encaminhamos um código ao seu e-mail, digite o código abaixo para entrar no aplicativo",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Digite o código ",
                labelStyle: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                  fontSize: 25.0,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20.0,
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
                    child: Text(
                      "Enviar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DropDown(),
                        ),
                      );
                    },
                  ),
                )),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}