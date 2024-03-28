class CurrencyValue {
  const CurrencyValue({
    required this.name,
    required this.priceInUsd,
  });

  final String name;
  final double priceInUsd;
  factory CurrencyValue.fromJson(Map<String, dynamic> json) {
    return CurrencyValue(
      name: json['name'],
      priceInUsd: json['priceInUsd'],
    );
  }
}
