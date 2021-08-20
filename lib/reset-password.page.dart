import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_campo/models/user.dart';
import 'package:projeto_campo/models/user_manager.dart';
import 'package:provider/provider.dart';

class ResetPasswordPage extends StatelessWidget {

  final auth = FirebaseAuth.instance;

  String email;



  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {

    return Provider(
      create: (_) => UserManager(),
      child: Scaffold(
        key: scaffoldKey,
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
            top: 25.0,
            left: 40.0,
            right: 40.0,
          ),
          child: Form(
            key: formKey,
            child: Consumer<UserManager>(
              builder: (_, userManager, __) {
                return ListView(
                  children: <Widget>[
                    SizedBox(
                      width: 200.0,
                      height: 200.0,
                      child: Image.asset(
                        "images/iconSenha.png",
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Esqueceu sua senha ?",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Por favor, informe o E-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração de sua senha.",
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
                        labelText: "E-mail",
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

                             }

                          ),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                );
              }
             ),
          ),
        ),
      ),
    );
  }
}