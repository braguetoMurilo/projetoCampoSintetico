import 'package:cloud_firestore/cloud_firestore.dart';

class User {

  User({this.email, this.password, this.name, this.id, this.nomeLocal, this.endereco, this.cnpj});

  String id;
  String name;
  String email;
  String password;
  String nomeLocal;
  String endereco;
  String cnpj;


  String confirmPassword;

  DocumentReference get firestoreRef =>
      Firestore.instance.document('usuario/$id');

  Future<void> saveData() async {
    await firestoreRef.setData(toMap());
  }

  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'email': email,
      'nome local': nomeLocal,
      'Endereço': endereco,
      'CNPJ': cnpj,
    };
  }
}