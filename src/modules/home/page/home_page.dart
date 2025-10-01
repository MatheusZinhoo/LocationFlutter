import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = HomeController(AddressService(Dio()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consulta de Endereço'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (cep) {
              controller.fetchAddress(cep);
            },
            decoration: InputDecoration(hintText: 'Digite o CEP'),
          ),
          Observer(
            builder: (_) {
              if (controller.address != null) {
                return Column(
                  children: [
                    Text('Logradouro: ${controller.address!.logradouro}'),
                    Text('Bairro: ${controller.address!.bairro}'),
                    Text('Cidade: ${controller.address!.localidade}'),
                  ],
                );
              } else if (controller.errorMessage.isNotEmpty) {
                return Text(controller.errorMessage);
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ],
      ),
    );
  }
}
