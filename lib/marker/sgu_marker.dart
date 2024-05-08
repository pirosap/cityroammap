import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SGUMarker extends Marker {
  static const size = 96.0;
  static const pos = LatLng(43.06684073193791, 141.4947489547376);

  SGUMarker()
      : super(
          // マーカーの高さ
          height: SGUMarker.size,
          // マーカーの幅
          width: SGUMarker.size,
          // 座標
          point: pos,
          // マーカーWidget
          child: GestureDetector(
            onTap: () => launchUrlString('https://www.sgu.ac.jp/'),
            child: Image.asset('assets/sgu.png'),
          ),
        );
}

class SGUCircleMarker extends CircleMarker {
  SGUCircleMarker()
      : super(
          // 座標
          point: SGUMarker.pos,
          // メートル単位
          useRadiusInMeter: true,
          // 1000m = 1km 半径
          radius: 200,
          // 円の色
          color: Colors.green.withOpacity(0.1),
          // 円の枠線の色
          borderColor: Colors.green,
          // 円の枠線の太さ
          borderStrokeWidth: 1.0,
        );
}
