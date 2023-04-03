class Produto {
  static int total = 0;
  late int _codigo;
  final String _descricao;
  final double _valor;

  Produto(this._descricao, this._valor) {
    _codigo = ++total;
  }

  @override
  String toString() {
    return '$_codigo\t$_descricao\t$_valor}';
  }

  double getValor() {
    return _valor;
  }

  int getCodigo() {
    return _codigo;
  }

  String getDescricao() {
    return _descricao;
  }
}
