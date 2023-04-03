import 'tipo_cliente.dart';

class Cliente {
  static int _totalClientes = 0;
  late int _codigo;
  final String _nome;
  final String _cnpjcpf;
  final TipoCliente _tipoCliente;

  Cliente(this._nome, this._cnpjcpf, this._tipoCliente) {
    _codigo = ++_totalClientes;
  }

  @override
  String toString() {
    return 'Cliente{codigo: $_codigo, nome: $_nome, cnpjcpf: $_cnpjcpf, tipoCliente: $_tipoCliente}';
  }
}
