import 'tarefa.dart';

class ListaTarefas {
  List<Tarefa> _tarefas = [];

  List<Tarefa> get tarefas => _tarefas;

  void adicionarTarefa(Tarefa tarefa) {
    _tarefas.add(tarefa);
  }

  void removerTarefa(int index) {
    _tarefas.removeAt(index);
  }
}
