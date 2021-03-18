import 'package:flutter/material.dart';

class FormPlayer extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormPlayer> {
  String _name;
  String _email;
  String _password;
  String _phoneNumber;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Nome :'),
      validator: (String value){
        if(value.isEmpty){
          return "Nome é um campo obrigatorio";
        }},
      onSaved: (String value){
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'E-mail :'),
      validator: (String value){
        if(value.isEmpty){
          return "E-mail é um campo obrigatorio";
        }},
      onSaved: (String value){
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Senha :'),
      validator: (String value){
        if(value.isEmpty){
          return "Senha é um campo obrigatorio";
        }},
      onSaved: (String value){
        _password = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Número de celular :'),
      validator: (String value){
        if(value.isEmpty){
          return "O número de celular campo obrigatorio";
        }},
      onSaved: (String value){
        _phoneNumber = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadsatro Jogador "),
          backgroundColor: Colors.black54,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Container(

          margin: EdgeInsets.all(24),
          child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildName(),
                    _buildEmail(),
                    _buildPassword(),
                    _buildPhoneNumber(),
                    SizedBox(height: 100),
                    RaisedButton(
                      child: Text(
                        'Confirma',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: ()  {
                        if(!_formKey.currentState.validate()){
                          return;
                        }
                        _formKey.currentState.save();
                        print(_name);
                        print(_email);
                        print(_password);
                        print(_phoneNumber);
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}