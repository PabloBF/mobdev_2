import 'package:mobdev/cliente.dart';
import 'package:mobdev/nota_fiscal_venda.dart';
import 'package:mobdev/produto.dart';
import 'package:mobdev/tipo_cliente.dart';

void main() {
  Produto iPhone = Produto('iPhone', 9000.00);
  Produto iPad = Produto('iPad', 7000.00);
  Produto earPods = Produto('earPods', 2500.00);

  Cliente pablo = Cliente('Pablo', '000.000.000-00', TipoCliente.pessoaFisica);
  Cliente renato =
      Cliente('Renato', '000.000.000-00', TipoCliente.pessoaFisica);

  NotaFiscalVenda nfv1 = NotaFiscalVenda(pablo, '02/04/2023');
  nfv1.criarItemNotaFical(iPhone, 3);
  nfv1.criarItemNotaFical(iPad, 1);
  nfv1.criarItemNotaFical(earPods, 1);

  NotaFiscalVenda nfv2 = NotaFiscalVenda(renato, '01/04/2023');
  nfv1.criarItemNotaFical(earPods, 1);
  nfv1.criarItemNotaFical(iPhone, 7);

  print(nfv1);
  print(nfv2);

  // print(iPhone);
}
