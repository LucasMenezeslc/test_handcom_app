// ignore_for_file: unnecessary_this

class Product {
  final String id;
  final String title;
  final String code;
  final String or;
  final String lot;
  final String codeBar;
  final double quantity;
  final bool status;
  bool wasMoved;

  Product({
    required this.id,
    required this.title,
    required this.code,
    required this.or,
    required this.lot,
    required this.codeBar,
    required this.quantity,
    required this.status,
    required this.wasMoved,
  });

  Product clone() {
    return Product(
      id: this.id,
      title: this.title,
      code: this.code,
      or: this.or,
      lot: this.lot,
      codeBar: this.codeBar,
      quantity: this.quantity,
      status: this.status,
      wasMoved: this.wasMoved,
    );
  }
}
