import 'package:mobx/mobx.dart';
import 'address_service.dart';
import 'address_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AddressService addressService;

  _HomeControllerBase(this.addressService);

  @observable
  Address? address;

  @observable
  String errorMessage = '';

  @action
  Future<void> fetchAddress(String cep) async {
    try {
      address = await addressService.getAddressByCep(cep);
    } catch (e) {
      errorMessage = 'Erro ao consultar o CEP';
    }
  }
}
