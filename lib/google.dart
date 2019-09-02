import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// import 'package:google_maps_flutter/google_maps_flutter.dart';
class CheckScreen extends StatefulWidget {
  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  GoogleMapController controller;
  Set<Marker> marker = {};
  @override
  void initState() {
    // TODO: implement initState
    marker.add(new Marker(
        markerId: MarkerId("college Marker"),
        position: const LatLng(17.7253, 78.2572),
        infoWindow: InfoWindow(
            title: "B V Raju Institute of Technology",
            // snippet: "BVRIT",
            // anchor: Offset(0.5, 0.0)),
        onTap: () {})));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: double.infinity,
        child: GoogleMap(
          compassEnabled: true,
          // trafficEnabled: true,
          markers: marker,
          myLocationEnabled: true,
          initialCameraPosition:
              CameraPosition(target: LatLng(17.725235, 78.257153), zoom: 16),
          onMapCreated: (controlle) {
            setState(() {
              controller = controlle;
            });
          },
        ),
      ),
    );
  }
}
