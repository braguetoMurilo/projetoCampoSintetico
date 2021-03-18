import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String nomeCidade = "";
  var _cidades = ['Cascavel', 'Toledo', 'Palotina'];
  var _itemSelecionado = "Cascavel";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.amberAccent,
      body: criaDropDownButton(),
    );
  }
  criaDropDownButton() {
    return Container(
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
                fontSize: 30,
              ),
            ),
          ),
          DropdownButton<String>(
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
        ],
      ),
    );
  }

 void _dropDownItemSelected(String novoItem) {
    setState(() {
      this._itemSelecionado = novoItem;
    });
  }
}
