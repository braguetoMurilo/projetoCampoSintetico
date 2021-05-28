import 'package:flutter/material.dart';

class FormFieldOwner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Conta'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(hintText: 'Nome Completo'),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(hintText: 'E-mail'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Numero celular'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Nome do local'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Endereço'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(hintText: 'CNPJ'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Horário de funcionamento'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Valor do horário '),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Senha'),
                obscureText: true,
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Repita a Senha'),
                obscureText: true,
              ),
              const SizedBox(height: 16,),
              SizedBox(
                height: 44,
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  disabledColor: Theme.of(context).primaryColor
                      .withAlpha(100),
                  textColor: Colors.white,
                  onPressed: (){

                  },
                  child: const Text(
                    'Criar Conta',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}