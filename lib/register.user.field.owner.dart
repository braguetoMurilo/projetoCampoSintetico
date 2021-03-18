import 'package:flutter/material.dart';

class FormFieldOwner extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormFieldOwner> {
  String _name;
  String _email;
  String _password;
  String _phoneNumber;
  String _localName;
  String _address;
  String _cnpj;
  String _openingHours;
  String _price;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildLocalName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Nome do local :'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Nome do local é um campo obrigatorio";
        }
      },
      onSaved: (String value) {
        _localName = value;
      },
    );
  }
  Widget _buildAdrress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Endereço :'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Endereço é um campo obrigatorio";
        }
      },
      onSaved: (String value) {
        _address = value;
      },
    );
  }
  Widget _buildCnpj() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'CNPJ :'),
      validator: (String value) {
        if (value.isEmpty) {
          return "CNPJ é um campo obrigatorio";
        }
      },
      onSaved: (String value) {
        _cnpj = value;
      },
    );
  }
  Widget _buildOpeningHours() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Hórario de funcionamento :'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Hórario de funcionamento é um campo obrigatorio";
        }
      },
      onSaved: (String value) {
        _openingHours = value;
      },
    );
  }
  Widget _buildPrice() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Preço :'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Preço é um campo obrigatorio";
        }
      },
      onSaved: (String value) {
        _price = value;
      },
    );
  }

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Nome :'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Nome é um campo obrigatorio";
        }
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'E-mail :'),
      validator: (String value) {
        if (value.isEmpty) {
          return "E-mail é um campo obrigatorio";
        }
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Senha :'),
      validator: (String value) {
        if (value.isEmpty) {
          return "Senha é um campo obrigatorio";
        }
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Número de celular :'),
      validator: (String value) {
        if (value.isEmpty) {
          return "O número de celular campo obrigatorio";
        }
      },
      onSaved: (String value) {
        _phoneNumber = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadsatro dono de Campo "),
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
                    _buildLocalName(),
                    _buildAdrress(),
                    _buildCnpj(),
                    _buildOpeningHours(),
                    _buildPrice(),

                    SizedBox(height: 100),
                    RaisedButton(
                      child: Text(
                        'Confirma',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
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