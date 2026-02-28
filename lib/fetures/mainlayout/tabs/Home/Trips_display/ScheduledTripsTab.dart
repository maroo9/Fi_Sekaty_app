import 'package:fi_sekaty_carpooling_app/fetures/mainlayout/tabs/Home/Trips_display/TripListView.dart';
import 'package:flutter/material.dart';
class ScheduledTripsTab extends StatelessWidget {
  const ScheduledTripsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const TripListView(isInstant: false);
  }
}
