import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}


class _DropDownState extends State<DropDown> {

  var _cidades = ['Cascavel', 'Toledo', 'Palotina'];
  var _itemSelecionado = "Cascavel";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      backgroundColor: Colors.white,
      body: criaDropDownButton(),
    );
  }
  criaDropDownButton() {
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 150.0,
          ),
          Container(
            height: 40.0,
            alignment: Alignment.center,
            child: Text(
              "Selecione a cidade",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 35,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DropdownButton<String>(
            iconSize: 75,
            items: _cidades.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            onChanged: (String novoItemSelecionado) {
              _dropDownItemSelected(novoItemSelecionado);
              setState(() {
                this._itemSelecionado = novoItemSelecionado;
              });
            },
            value: _itemSelecionado,
          ),

          SizedBox(
            height: 50.0,
          ),
          RaisedButton(
            color: Colors.red,
            child: Text(
              'Confirmar filtros',
              style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              if (!_formKey.currentState.validate()) {
                return;
              }
              _formKey.currentState.save();
            },
          ),
        ],
      ),
    ));
  }

  void _dropDownItemSelected(String novoItem) {
    setState(() {
      this._itemSelecionado = novoItem;
    });
  }
}
