import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Testa o retorno do endereço', () {
    final address = Address(cep: '12345-678', logradouro: 'Rua Teste');
    expect(address.cep, '12345-678');
    expect(address.logradouro, 'Rua Teste');
  });
}
