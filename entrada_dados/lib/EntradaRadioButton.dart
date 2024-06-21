import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({super.key});

  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  late int _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          RadioListTile(
              title: const Text("Masculino"),
              value: 1,
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha!;
                });
              }),
          RadioListTile(
              title: const Text("Feminino"),
              value: 2,
              groupValue: _escolhaUsuario,
              onChanged: (escolha) {
                setState(() {
                  _escolhaUsuario = escolha!;
                });
              }),
          ElevatedButton(
              child: const Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                if (kDebugMode) {
                  print("Resultado: $_escolhaUsuario");
                }
              })

          /*
          Text("Masculino"),
          Radio(
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("resultado: " + escolha);
              }
          ),
          Text("Feminino"),
          Radio(
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("resultado: " + escolha);
              }
          ),
          */
        ],
      ),
    );
  }
}
