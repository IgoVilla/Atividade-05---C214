import 'package:flutter_test/flutter_test.dart';
import 'package:tarefas_flutter/lista_tarefas.dart';
import 'package:tarefas_flutter/tarefa.dart';

void main() {
  group('ListaTarefas', () {
    test('Adicionar Tarefa', () {
      final listaTarefas = ListaTarefas();
      final tarefa = Tarefa('Comprar leite', 'Comprar 2L de leite desnatado');

      listaTarefas.adicionarTarefa(tarefa);

      expect(listaTarefas.tarefas.length, 1);
      expect(listaTarefas.tarefas[0], tarefa);
    });

    test('Remover Tarefa', () {
      final listaTarefas = ListaTarefas();
      final tarefa1 = Tarefa('Comprar leite', 'Comprar 2L de leite desnatado');
      final tarefa2 = Tarefa('Ir à academia', 'Ir à academia por 1 hora');

      listaTarefas.adicionarTarefa(tarefa1);
      listaTarefas.adicionarTarefa(tarefa2);

      listaTarefas.removerTarefa(0);

      expect(listaTarefas.tarefas.length, 1);
      expect(listaTarefas.tarefas[0], tarefa2);
    });
  });
}
