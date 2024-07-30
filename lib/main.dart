import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cityroammap/data/kuma.dart';
import 'package:cityroammap/marker/sgu_marker.dart';
import 'package:cityroammap/marker/ku_marker.dart';
import 'package:cityroammap/provider/kuma_list_provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Portal(
      child: MaterialApp(
	debugShowCheckedModeBanner: false,
        title: 'OpenRoaming Map (JAPAN)',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const KumapPage(),
      ),
    );
  }
}

class KumapPage extends ConsumerWidget {
  const KumapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final kumaList = switch (ref.watch(kumaListProvider)) {
      AsyncData(:final value) => value,
      _ => <Kuma>[],
    };

    return Scaffold(
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(30.0, 0.0),
          initialZoom: 3,
          minZoom: 1,
          maxZoom: 20,
        ),
        children: [
          TileLayer(
            urlTemplate:
                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          MarkerLayer(
            markers: [
              SGUMarker(),
              ...kumaList.map(KuMarker.new),
            ],
          ),
          CircleLayer(
            circles: [
              SGUCircleMarker(),
              ...kumaList.map(KuCircleMarker.new),
            ],
          ),
          RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'OpenStreetMap',
                onTap: () => launchUrlString(
                    'https://www.openstreetmap.org/copyright'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
