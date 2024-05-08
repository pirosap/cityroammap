import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:cityroammap/data/kuma.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'kuma_list_provider.g.dart';

@riverpod
Future<List<Kuma>> kumaList(KumaListRef ref) async {
  final json = await rootBundle.loadString('assets/kuma.json');
  final List<dynamic> list = jsonDecode(json);
  return list.map((e) => Kuma.fromJson(e)).toList();
}
