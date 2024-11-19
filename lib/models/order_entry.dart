import 'dart:convert';

List<ECommerce> eCommerceFromJson(String str) =>
    List<ECommerce>.from(json.decode(str).map((x) => ECommerce.fromJson(x)));

String eCommerceToJson(List<ECommerce> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ECommerce {
  String model;
  String pk;
  Fields fields;

  ECommerce({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory ECommerce.fromJson(Map<String, dynamic> json) => ECommerce(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  DateTime time;
  String name;
  int price;
  String description;
  int quantity;
  String size;
  String season;
  String type;

  Fields({
    required this.user,
    required this.time,
    required this.name,
    this.price = 1500000,
    required this.description,
    required this.quantity,
    this.size = "M",
    this.season = "24/25",
    this.type = "home",
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        time: DateTime.parse(json["time"]),
        name: json["name"],
        price: json["price"] ?? 1500000,
        description: json["description"],
        quantity: json["quantity"],
        size: json["size"] ?? "M",
        season: json["season"] ?? "24/25",
        type: json["type"] ?? "home",
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "time":
            "${time.year.toString().padLeft(4, '0')}-${time.month.toString().padLeft(2, '0')}-${time.day.toString().padLeft(2, '0')}",
        "name": name,
        "price": price,
        "description": description,
        "quantity": quantity,
        "size": size,
        "season": season,
        "type": type,
      };
}
