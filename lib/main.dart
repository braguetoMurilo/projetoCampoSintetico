import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeto_campo/login.page.dart';
import 'package:projeto_campo/models/user_manager.dart';
import 'package:provider/provider.dart';




void main(){
  runApp(MyApp());

    Firestore.instance.collection("Teste").add({"Teste" : "Teste"});
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => UserManager(),
      child: MaterialApp(
        title: 'Projeto Campo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: LoginPage(
        ),
      ),
    );
  }
}
