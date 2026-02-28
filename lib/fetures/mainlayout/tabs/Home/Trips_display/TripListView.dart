import 'package:fi_sekaty_carpooling_app/FirebaseServices/FairebaseServices.dart';
import 'package:fi_sekaty_carpooling_app/Models/Trip_model.dart';
import 'package:flutter/material.dart';
class TripListView extends StatefulWidget {
  final bool isInstant;

  const TripListView({super.key, required this.isInstant});

  @override
  State<TripListView> createState() => _TripListViewState();

}

class _TripListViewState extends State<TripListView> {
  List<TripModel> trips = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _displayTrips();
  }
  void _displayTrips()async{
    trips= await Firebaseservices.getTheTrips();
setState(() {

});
  }
  @override
  Widget build(BuildContext context) {
    final filteredTrips = trips
        .where((trip) => trip.isInstant == widget.isInstant)
        .toList();

    return ListView.builder(
      itemCount: trips.length,
      itemBuilder: (context, index) {
        final trip = trips[index];

        return Card(
          margin: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text("${trip.from} → ${trip.to}"),
            subtitle: Text(trip.driverId),
            trailing: Text("${trip.price} EGP"),
          ),
        );
      },
    );
  }
}