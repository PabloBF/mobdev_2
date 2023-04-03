import 'package:mobdev/nota_fiscal_venda.dart';
import 'package:mobdev/produto.dart';

class ItemNotaFiscal {
  final NotaFiscalVenda _notaFiscal;
  late int _numero;
  final Produto _produto;
  final int _quantidade;
  late double _valor; // BigDecimal?

  ItemNotaFiscal(this._notaFiscal, this._produto, this._quantidade) {
    _numero = _notaFiscal.itens.length + 1;
    _valor = valorItemNF();
  }

  double valorItemNF() {
    return _produto.getValor() * _quantidade;
  }

  @override
  String toString() {
    // private?
    return '${_numero.toString().padLeft(3, '0')}\t${_produto.getCodigo().toString().padLeft(3, '0')}\t${_produto.getDescricao().padRight(9)}\t$_quantidade\t${_produto.getValor().toStringAsFixed(2).replaceAll(".", ",").padLeft(11)}\t${_valor.toStringAsFixed(2).replaceAll(".", ",").padLeft(9)}';
  }

  double getValor() {
    return _valor;
  }
}
