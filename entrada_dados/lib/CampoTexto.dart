import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(32),
            child: TextField(
              //text, number, emailAddress, datetime
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Digite um valor"),
              //enabled: false,
              //maxLength: 2,
              //maxLengthEnforced: false,
              style: const TextStyle(fontSize: 50, color: Colors.green),
              //obscureText: true,
              /*
              onChanged: (String texto){
                print("valor digitado:" +  texto);
              },*/
              onSubmitted: (String texto) {
                if (kDebugMode) {
                  print("valor digitado:$texto");
                }
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            child: const Text("Salvar"),
            onPressed: () {
              if (kDebugMode) {
                print("valor digitado:${_textEditingController.text}");
              }
            },
          )
        ],
      ),
    );
  }
}
