import 'dart:async';
import 'models/collection_model.dart';

class MockFirestore {
  static Future<List<CollectionModel>> fetchCollections() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      CollectionModel(
        id: "1",
        title: "Flutter Basics",
        description: "Learn Flutter",
        coverImageUrl: "",
        creatorId: "admin",
        isPremium: false,
        sectionCount: 4,
        createdAt: DateTime.now(),
      ),
      CollectionModel(
        id: "2",
        title: "Advanced Flutter",
        description: "Deep dive",
        coverImageUrl: "",
        creatorId: "admin",
        isPremium: true,
        sectionCount: 6,
        createdAt: DateTime.now(),
      ),CollectionModel(
        id: "3",
        title: "State management with Flutter",
        description: "Deep dive",
        coverImageUrl: "",
        creatorId: "admin",
        isPremium: true,
        sectionCount: 6,
        createdAt: DateTime.now(),
      ),CollectionModel(
        id: "4",
        title: "Flutter Basics",
        description: "Deep dive",
        coverImageUrl: "",
        creatorId: "admin",
        isPremium: true,
        sectionCount: 6,
        createdAt: DateTime.now(),
      ),
    ];
  }
}