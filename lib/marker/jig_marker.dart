import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher_string.dart';

class JigMarker extends Marker {
  static const size = 48.0;
  static const pos = LatLng(35.943306, 136.200357);

  JigMarker()
      : super(
          // マーカーの高さ
          height: JigMarker.size,
          // マーカーの幅
          width: JigMarker.size,
          // 座標
          point: pos,
          // マーカーWidget
          child: GestureDetector(
            onTap: () => launchUrlString('https://www.jig.jp/'),
            child: Image.asset('assets/jigjp.png'),
          ),
        );
}

class JigCircleMarker extends CircleMarker {
  JigCircleMarker()
      : super(
          // 座標
          point: JigMarker.pos,
          // メートル単位
          useRadiusInMeter: true,
          // 1000m = 1km 半径
          radius: 1000,
          // 円の色
          color: Colors.green.withOpacity(0.1),
          // 円の枠線の色
          borderColor: Colors.green,
          // 円の枠線の太さ
          borderStrokeWidth: 1.0,
        );
}
