 import 'package:flutter/material.dart';

import 'TripListView.dart';
class InstantTripsTab  extends StatelessWidget {
  const InstantTripsTab ({super.key});

  @override
  Widget build(BuildContext context) {
    return  TripListView(
        isInstant: true,
    );
  }
}
