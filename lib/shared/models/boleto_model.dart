import 'dart:convert';

class BoletoModel {
  final String? name;
  final String? vencimento;
  final double? value;
  final String? barcode;

  BoletoModel({
    this.name,
    this.vencimento,
    this.value,
    this.barcode,
  });

  BoletoModel copyWith({
    String? name,
    String? vencimento,
    double? value,
    String? barcode,
  }) {
    return BoletoModel(
      name: name ?? this.name,
      vencimento: vencimento ?? this.vencimento,
      value: value ?? this.value,
      barcode: barcode ?? this.barcode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'vencimento': vencimento,
      'value': value,
      'barcode': barcode,
    };
  }

  factory BoletoModel.fromMap(Map<String, dynamic> map) {
    return BoletoModel(
      name: map['name'],
      vencimento: map['vencimento'],
      value: map['value'],
      barcode: map['barcode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BoletoModel.fromJson(String source) =>
      BoletoModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BoletoModel(name: $name, vencimento: $vencimento, value: $value, barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BoletoModel &&
        other.name == name &&
        other.vencimento == vencimento &&
        other.value == value &&
        other.barcode == barcode;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        vencimento.hashCode ^
        value.hashCode ^
        barcode.hashCode;
  }
}
