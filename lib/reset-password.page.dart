import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black54,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
            top: 60.0,
            left: 40.0,
            right:  40.0,
        ),
        color: Colors.white,
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
              "Esqueceu sua senha ?",
              style: TextStyle(

              ),

            ),
          ],
        ),
      ),

    );
  }
}
