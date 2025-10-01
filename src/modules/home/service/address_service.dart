import 'package:dio/dio.dart';
import 'address_model.dart';

class AddressService {
  final Dio dio;

  AddressService(this.dio);

  Future<Address> getAddressByCep(String cep) async {
    final response = await dio.get('https://viacep.com.br/ws/$cep/json/');
    if (response.statusCode == 200) {
      return Address.fromJson(response.data);
    } else {
      throw Exception('Erro ao buscar endereço');
    }
  }
}
