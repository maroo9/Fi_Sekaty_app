class TripModel{
  final String id;
  final String driverId;
  final String? from;
  final String? to;
  final DateTime departureTime;
  final int price;
  final int availableSeats;
  final bool isInstant;
  final DateTime createdAt;

  TripModel(this.id, this.driverId, this.from, this.to, this.departureTime,
      this.price, this.availableSeats, this.isInstant, this.createdAt);

   TripModel.fromjason(Map<String,dynamic>json) :this(
      json["id"] as String,
      json["driverId"] as String,
      json["from"] as String?,
      json["to"] as String?,
      json["departureTime"] as DateTime,
      json["price"] as int,
      json["availableSeats"] as int,
      json["isInstant"] as bool,
      json["createdAt"] as DateTime,
    );







  Map<String,dynamic>Tojason(){
  return{
    "id":id,
    "driverId":driverId,
    "from":from,
    "to":to,
    "departureTime":departureTime,
    "price":price,
  };
}


}