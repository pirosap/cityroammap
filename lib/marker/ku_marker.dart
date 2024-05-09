import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:cityroammap/data/kuma.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class KuMarker extends Marker {
  KuMarker(this.kuma)
      : super(
          height: 24,
          width: 24,
          point: LatLng(kuma.latitude, kuma.longitude),
          child: KuMarkerPopup(kuma),
        );

  final Kuma kuma;
}

class KuCircleMarker extends CircleMarker {
  KuCircleMarker(this.kuma)
      : super(
          point: LatLng(kuma.latitude, kuma.longitude),
          radius: 25,
          useRadiusInMeter: true,
          color: Colors.red.withOpacity(0.1),
          borderColor: Colors.red,
        );

  final Kuma kuma;
}

class KuMarkerPopup extends HookWidget {
  const KuMarkerPopup(this.kuma, {super.key});
  final Kuma kuma;

  @override
  Widget build(BuildContext context) {
    final showPopup = useState(false);

    return PortalTarget(
      closeDuration: const Duration(milliseconds: 200),
      visible: showPopup.value,
      anchor: const Aligned(
        follower: Alignment.bottomCenter,
        target: Alignment.topCenter,
      ),
      portalFollower: AnimatedOpacity(
        opacity: showPopup.value ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 200),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                constraints: const BoxConstraints(maxWidth: 600),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => launchUrl(Uri.parse(kuma.url)),
                      child: Text(
                        kuma.name,
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Text(kuma.description),
                    Text('RCOIs：${kuma.type}'),
                    Text('確認日時：${kuma.confirmedTimeStr}'),
                    Text('(${kuma.latitude},${kuma.longitude})'),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      iconSize: 14,
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        showPopup.value = false;
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      child: GestureDetector(
        onTap: () => showPopup.value = !showPopup.value,
        child: Image.asset(
          kuma.type == '4096 5a03ba0000'
              ? 'assets/kuma.png' //
              : 'assets/ashiato.png',
        ),
      ),
    );
  }
}
