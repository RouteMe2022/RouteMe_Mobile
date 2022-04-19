class OrderModel {
  int id;
  int itemCount;
  String clientName;
  String clientPhone;
  double lon;
  double lat;
  String address;
  double price;
  int vendorId;
  String branch;
  String comment;
  String state;

  OrderModel({
    required this.id,
    required this.itemCount,
    required this.clientName,
    required this.clientPhone,
    required this.lon,
    required this.lat,
    required this.address,
    required this.price,
    required this.vendorId,
    required this.branch,
    required this.comment,
    required this.state,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json["id"],
        itemCount: json["itemCount"],
        clientName: json["clientName"],
        clientPhone: json["clientPhone"],
        lon: json['lon'] == null ? 0.0 : json['lon'].toDouble(),
        lat: json['lat'] == null ? 0.0 : json['lat'].toDouble(),
        address: json["address"],
        price: json['price'] == null ? 0.0 : json['price'].toDouble(),
        vendorId: json["vendorId"],
        branch: json["branch"],
        comment: json["comment"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "itemCount": itemCount,
        "clientName": clientName,
        "clientPhone": clientPhone,
        "lon": lon,
        "lat": lat,
        "address": address,
        "price": price,
        "vendorId": vendorId,
        "branch": branch,
        "comment": comment,
        "state": state,
      };
}
