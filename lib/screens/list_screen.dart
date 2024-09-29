import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  final String nome;

  const ListScreen({super.key, this.nome = ''});

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Map<String, dynamic>> _itens = [];

  void _carregaItens() {
    _itens = [];
    for (int i = 0; i <= 20; i++) {
      Map<String, dynamic> item = {};
      item["titulo"] = "Título $i da lista";
      item["descricao"] = "Descrição $i da lista";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregaItens();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(widget.nome.isNotEmpty
            ? 'Bem vindo(a), ${widget.nome}'
            : 'Bem vindo(a)'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: _itens.map((item) {
              return ListTile(
                title: Text(
                  item["titulo"],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text(item["descricao"]),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Alerta'),
                        content:
                            Text('Você clicou no item ${_itens.indexOf(item)}'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Sim'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: const Text('Não'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            }).toList(),
            color: Colors.black, // Muda a cor do divisor
          ).toList(),
        ),
      ),
    );
  }
}
