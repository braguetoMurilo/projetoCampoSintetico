import 'package:flutter/material.dart';
import 'package:projeto_campo/Helpers/validators.dart';
import 'package:projeto_campo/models/user.dart';
import 'package:projeto_campo/models/user_manager.dart';
import 'package:provider/provider.dart';

class FormPlayer extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final User user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Criar Conta'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: Consumer<UserManager>(
              builder: (_,userManger, __){
                return ListView(
                  padding: const EdgeInsets.all(16),
                  shrinkWrap: true,
                  children: <Widget>[
                    TextFormField(
                      enabled: !userManger.loadind,
                      decoration: const InputDecoration(hintText: 'Nome Completo'),
                      validator: (name) {
                        if (name.isEmpty)
                          return 'Campo Obrigatorio';
                        else if (name.trim().split(' ').length <= 1)
                          return 'Preencha seu nome completo';
                        return null;
                      },
                      onSaved: (name) => user.name = name,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      enabled: !userManger.loadind,
                      decoration: const InputDecoration(hintText: 'E-mail'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (email) {
                        if (email.isEmpty)
                          return 'Campo Obrigatorio';
                        else if (!emailValidad(email)) return 'E-mail Inválido';
                        return null;
                      },
                      onSaved: (email) => user.email = email,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      enabled: !userManger.loadind,
                      decoration: const InputDecoration(hintText: 'Senha'),
                      obscureText: true,
                      validator: (pass) {
                        if (pass.isEmpty)
                          return 'Campo obrigatorio';
                        else if (pass.length < 6) return 'Senha muito curta';
                        return null;
                      },
                      onSaved: (pass) => user.password = pass,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      enabled: !userManger.loadind,
                      decoration: const InputDecoration(hintText: 'Repita a Senha'),
                      obscureText: true,
                      validator: (pass) {
                        if (pass.isEmpty)
                          return 'Campo obrigatorio';
                        else if (pass.length < 6) return 'Senha muito curta';
                        return null;
                      },
                      onSaved: (pass) => user.confirmPassword = pass,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 44,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        disabledColor:
                        Theme.of(context).primaryColor.withAlpha(100),
                        textColor: Colors.white,
                        onPressed: userManger.loadind ? null : () {
                          if (formKey.currentState.validate()) {
                            formKey.currentState.save();

                            if (user.password != user.confirmPassword) {
                              scaffoldKey.currentState.showSnackBar(
                                SnackBar(
                                  content: const Text("Senhas são diferentes"),
                                  backgroundColor: Colors.red,
                                ),
                              );
                              return;
                            }
                           userManger.signUp(
                                user: user,
                                onSuccess: (){
                                  debugPrint("Sucesso");
                                  scaffoldKey.currentState.showSnackBar(
                                    SnackBar(
                                      content: const Text("Cadastrado com sucesso !"),
                                      backgroundColor: Colors.green,
                                    ),
                                  );


                                },
                                onFail: (e){
                                  scaffoldKey.currentState.showSnackBar(
                                    SnackBar(
                                      content:  Text("Falha ao cadastrar: $e"),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                }

                            );

                          }
                        },
                        child: userManger.loadind ?
                        CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        ) :
                        const Text(
                          'Criar Conta',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
