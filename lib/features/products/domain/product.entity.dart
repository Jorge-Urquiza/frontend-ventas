class ProductEntity {
  final int id;
  final String sku;
  final String name;
  final String foreignName;
  final String manufacturerSku;
  final String productGroupName;
  final String manufacturerName;
  final String supplierName;
  final double weight;
  final String measurementUnit;
  final double price;
  final String barCode;
  final String alternateSku;
  final DateTime createdAt;

  ProductEntity({
    required this.id,
    required this.sku,
    required this.name,
    required this.foreignName,
    required this.manufacturerSku,
    required this.productGroupName,
    required this.manufacturerName,
    required this.supplierName,
    required this.weight,
    required this.measurementUnit,
    required this.price,
    required this.barCode,
    required this.alternateSku,
    required this.createdAt,
  });

  factory ProductEntity.fromJson(Map<String, dynamic> json) {
    return ProductEntity(
      id: json['id'],
      sku: json['sku'],
      name: json['name'],
      foreignName: json['foreignName'],
      manufacturerSku: json['manufacturerSku'],
      productGroupName: json['productGroupName'],
      manufacturerName: json['manufacturerName'],
      supplierName: json['supplierName'],
      weight: json['weight'].toDouble(),
      measurementUnit: json['measurementUnit'],
      price: json['price'].toDouble(),
      barCode: json['barCode'],
      alternateSku: json['alternateSku'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
}