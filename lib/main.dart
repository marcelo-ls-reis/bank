import 'package:flutter/material.dart';

void main() => runApp( // runApp é um método que recebe um Widget e o exibe na tela
      MaterialApp( // MaterialApp é um Widget que configura o tema do app
        home: Scaffold( // Scaffold é um Widget que configura a estrutura básica de uma tela
        body: const Card( color: Colors.blue,
          child: Text("Teste de card"),
        ),
          appBar: AppBar( // AppBar é um Widget que configura a barra superior da tela
            title: const Text('Tranferências'), // Text é um Widget que exibe um texto
          ),
          floatingActionButton: FloatingActionButton( // FloatingActionButton é um Widget que configura um botão flutuante
            onPressed: () {}, // onPressed é um parâmetro que recebe uma função que será executada quando o botão for pressionado
            child: const Icon(Icons.add), // Icon é um Widget que exibe um ícone
          ),
        ),
      )
    );
