import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencias(),
          appBar: AppBar(
            title: Text("Transferências"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ),
      ),
    );

//
class ListaTransferencias extends StatelessWidget {
  // StatelessWidget é um widget que não muda
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        // Lista de widgets
        ItemTransferencia(Transferencia(100.00, 1234)),
        ItemTransferencia(Transferencia(200.00, 1235)),
        ItemTransferencia(Transferencia(300.00, 1236)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget { 
  final Transferencia _transferencia;
  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.monetization_on,
          color: Colors.green,
        ),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia { 
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta); 
}
