import 'package:mobdev/item_nota_fiscal.dart';
import 'package:mobdev/produto.dart';

import 'cliente.dart';

class NotaFiscalVenda {
  static int totalNotasFiscaisVenda = 0; // acrescentado
  late int _codigo;
  final Cliente _cliente;
  final String _data;
  late double _valorNota; // float?
  final List<ItemNotaFiscal> itens = [];

  double _calcularValor() {
    // private? float?
    double valor = 0.0;

    for (var item in itens) {
      valor += item.getValor();
    }

    _valorNota = valor;
    return valor;
  }

  void criarItemNotaFical(Produto produto, int quantidade) {
    ItemNotaFiscal novoItem = ItemNotaFiscal(this, produto, quantidade);
    itens.add(novoItem);
    _calcularValor();
  } // private? void?

  NotaFiscalVenda(this._cliente, this._data) {
    // private?
    _codigo = ++totalNotasFiscaisVenda;
    _valorNota = 0.0;
  }

  @override
  String toString() {
    // private?
    return '''
Loja do Pablo
Av. Treze de Maio, 2081
Benfica, Fortaleza - CE
CNPJ:00.000.000/0000-00                        IE:000.000.000.000
${DateTime.now()}                              CCF:${_codigo.toString().padLeft(5, '0')}
-----------------------------------------------------------------
                           CUPOM FISCAL
ITEM\tCODIGO\tDESCRICAO\tQTD\tVL.UNIT(R\$)\tTOTAL(R\$)
${itens.join('\n')}
-----------------------------------------------------------------
TOTAL R\$${_valorNota.toStringAsFixed(2).replaceAll(".", ",").padLeft(57)}
Dinheiro
-----------------------------------------------------------------
}''';
  }
}
