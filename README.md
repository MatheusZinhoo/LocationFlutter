# FastLocation - Aplicativo de Consulta de CEP e Endereços

Este projeto foi desenvolvido para atender a demanda da empresa FastDelivery, que precisava de um aplicativo móvel para consulta rápida de CEPs e endereços, com funcionalidades offline e integração com API pública.

---

## Funcionalidades

- Consulta de endereço por CEP via API pública (https://viacep.com.br/ws)
- Consulta de CEP por endereço parcial ou completo
- Armazenamento local para consultas recorrentes
- Histórico de consultas
- Traçar rota até o endereço consultado a partir da localização atual
- Interface reativa utilizando MobX
- Compatível com Android e iOS

---

## Tecnologias utilizadas

- Flutter
- Dio (HTTP client)
- MobX (Gerenciamento de estado)
- Hive (Armazenamento local)
- MapLauncher (Abrir mapas externos)
- Geocoding

---

## Como rodar o projeto

1. Clone o repositório:

```bash
git clone https://github.com/MatheusZinhoo/LocationFlutter.git
cd LocationFlutter
