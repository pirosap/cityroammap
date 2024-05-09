import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cityroammap/data/kuma.dart';
import 'package:cityroammap/marker/sgu_marker.dart';
import 'package:cityroammap/marker/ku_marker.dart';
import 'package:cityroammap/provider/kuma_list_provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
          initialCenter: SGUMarker.pos,
          initialZoom: 6,
          minZoom: 4,
          maxZoom: 18,
        ),
        children: [
          TileLayer(
            urlTemplate:
                'https://cyberjapandata.gsi.go.jp/xyz/pale/{z}/{x}/{y}.png',
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
                '国土地理院',
                onTap: () => launchUrlString(
                    'https://maps.gsi.go.jp/development/ichiran.html'),
              ),
            ],
          ),
          Positioned(
            top: 20, // 上からの位置
            right: 20, // 右からの位置
            child: Container(
              width: 120, // 幅
              height: 80, // 高さ
              color: Colors.white, // 背景色
              child: Center(
                child: Text('Circle radius: 20m'), // 画像の凡例
              ),
            ),
          ),
        ],
      ),
    );
  }
}
