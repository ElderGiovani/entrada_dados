import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          CheckboxListTile(
              title: const Text("Comida Brasileira"),
              subtitle: const Text("A melhor comida do mundo!!"),
              //activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaBrasileira,
              onChanged: (valor) {
                setState(() {
                  _comidaBrasileira = valor!;
                });
              }),
          CheckboxListTile(
              title: const Text("Comida Mexicana"),
              subtitle: const Text("A melhor comida do mundo!!"),
              //activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _comidaMexicana,
              onChanged: (valor) {
                setState(() {
                  _comidaMexicana = valor!;
                });
              }),
          ElevatedButton(
              child: const Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                if (kDebugMode) {
                  print(
                      "Comida Brasileira: $_comidaBrasileira Comida Mexicana $_comidaMexicana");
                }
              })

          /*
          Text("Comida Brasileira"),
          Checkbox(
            value: _estaSelecionado,
            onChanged: (bool valor){
              setState(() {
                _estaSelecionado = valor;
              });
              print("Checkbox: " + valor.toString() );
            },
          )*/
        ],
      ),
    );
  }
}
