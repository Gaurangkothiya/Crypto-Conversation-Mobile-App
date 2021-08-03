class Currency {
  final String id;
  final String logoUrl;
  final String name;
  final double price;
  final double oneHourChange;
  final double oneDayChange;
  final double marketCap;
  final int rank;
  final int rankDelta;

  const Currency(
      {required this.id,
      required this.logoUrl,
      required this.name,
      required this.price,
      required this.oneHourChange,
      required this.oneDayChange,
      required this.marketCap,
      required this.rank,
      required this.rankDelta});

  Currency.fromJson(Map<String,dynamic> json) : this.id = json['id'],
    this.logoUrl = json['logoUrl'],
    this.name = json['name'],
    this.price = double.parse(json['price']),
    this.oneHourChange = double.parse(json['oneHourChange']),
    this.oneDayChange = double.parse(json['oneDayChange']),
    this.marketCap = double.parse(json['marketCap']),
    this.rank = int.parse(json['rank']),
    this.rankDelta  = int.parse(json['rankDelta']);
}
