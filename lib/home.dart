import 'package:flutter/material.dart';
import 'package:tarefas_flutter/lista_tarefas.dart';
import 'package:tarefas_flutter/tarefa.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  final ListaTarefas _listaTarefas = ListaTarefas();

  void _adicionarTarefa() {
    setState(() {
      final tarefa = Tarefa(_controller.text, '');
      _listaTarefas.adicionarTarefa(tarefa);
      _controller.clear();
    });
  }

  void _removerTarefa(int index) {
    setState(() {
      _listaTarefas.removerTarefa(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Adicionar Tarefa',
              contentPadding: EdgeInsets.all(16.0),
            ),
            onSubmitted: (_) => _adicionarTarefa(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _listaTarefas.tarefas.length,
              itemBuilder: (context, index) {
                final tarefa = _listaTarefas.tarefas[index];

                return ListTile(
                  title: Text(tarefa.titulo),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => _removerTarefa(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
