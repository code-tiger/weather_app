import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:latlong2/latlong.dart';
import 'package:weather_app/core/widgets/main_divider.dart';
import 'package:weather_app/theme/main_box_decoration.dart';

class Location extends StatelessWidget {
  final double latitude;
  final double longitude;

  const Location({
    super.key,
    required this.latitude,
    required this.longitude,
  });

  static const double maxZoom = 8;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Location',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        const MainDivider(),
        const SizedBox(height: 16),
        Container(
          decoration: MainBoxDecoration.weatherBoxDecoration,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                  child: FlutterMap(
                    options: MapOptions(
                      initialCenter: LatLng(latitude, longitude),
                      initialZoom: maxZoom - 2,
                      minZoom: maxZoom - 2,
                      maxZoom: maxZoom,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.thunderforest.com/transport/{z}/{x}/{y}.png',
                        userAgentPackageName: 'com.example.weather_app',
                        tileProvider: CancellableNetworkTileProvider(),
                        maxZoom: maxZoom,
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(latitude, longitude),
                            width: 80,
                            height: 80,
                            child: const Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
