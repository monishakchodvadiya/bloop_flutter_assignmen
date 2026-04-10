
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class LessonModel {
  final String id;
  final String title;

  LessonModel({required this.id, required this.title});

  factory LessonModel.fromJson(Map<String, dynamic> json) {
    return LessonModel(
      id: json['id'],
      title: json['title'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
  };
}

class LessonFirestoreService {
  Future<List<LessonModel>> fetchLessons() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      LessonModel(id: '1', title: 'Lesson 1'),
      LessonModel(id: '2', title: 'Lesson 2'),
    ];
  }
}

class ImageCacheService {
  Future<String> resolveThumbnail(String id) async {
    await Future.delayed(const Duration(milliseconds: 200));
    return "https://via.placeholder.com/150";
  }
}


class LessonCacheService {
  late Box _box;

  Future<void> init() async {
    //  FIX 1:
    // Problem: Used getApplicationDocumentsDirectory (wrong location for cache data)
    // Consequence: Data may be exposed to user / backup issues
    // Fix: Use getApplicationSupportDirectory (correct for app internal storage)

    final dir = await getApplicationSupportDirectory();
    Hive.init(dir.path);

    _box = await Hive.openBox('lessons');
  }


}