import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({super.key});

  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;
  bool _configuracao = false;
  bool _configuracaoImagens = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          SwitchListTile(
              title: const Text("Receber notificações?"),
              value: _escolhaUsuario,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
              }),
          SwitchListTile(
              title: const Text(" notificações?"),
              value: _configuracao,
              onChanged: (bool valor) {
                setState(() {
                  _configuracao = valor;
                });
              }),
          SwitchListTile(
              title: const Text("Receber notificaçõesTeste?"),
              value: _configuracaoImagens,
              onChanged: (bool valor) {
                setState(() {
                  _configuracaoImagens = valor;
                });
              }),
          ElevatedButton(
              child: const Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                if (_escolhaUsuario) {
                  print("escolha: ativar notificações");
                } else {
                  print("escolha: NÃO ativar notificações");
                }

                //print("Resultado: " + _escolhaUsuario.toString() );
              })

          /*
          Switch(
              value: _escolhaUsuario,
              onChanged: (bool valor){
                setState(() {
                  _escolhaUsuario = valor;
                });
              }
          ),
          Text("Receber notificações?")
          */
        ],
      ),
    );
  }
}
