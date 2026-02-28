class BookingModel{
  final String id;
  final String tripId;
  final String passengerId;
  final String status;
  final DateTime bookingTime;

  BookingModel(this.id, this.tripId, this.passengerId, this.status,
      this.bookingTime);

}