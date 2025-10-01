import 'package:flutter/material.dart';
import '../model/address_model.dart';

class AddressCard extends StatelessWidget {
  final AddressModel address;

  const AddressCard({required this.address});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('${address.logradouro}, ${address.bairro}'),
        subtitle: Text('${address.localidade} - ${address.uf}\nCEP: ${address.cep}'),
      ),
    );
  }
}
