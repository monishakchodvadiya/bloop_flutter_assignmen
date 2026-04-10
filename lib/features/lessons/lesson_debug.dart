
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

  Future<void> saveLesson(LessonModel lesson) async {
    await _box.put(lesson.id, lesson.toJson());
  }

  Future<LessonModel?> getLesson(String id) async {
    final data = _box.get(id);

    //  FIX 2:
    // Problem: fromJson called on null → runtime crash
    // Consequence: App crashes on cache miss
    // Fix: Check null before parsing

    if (data == null) return null;

    return LessonModel.fromJson(Map<String, dynamic>.from(data));
  }

  Future<void> clearAll() async {
    await _box.clear();
  }
}


final lessonNotifierProvider =
AsyncNotifierProvider<LessonNotifier, List<LessonModel>>(
    LessonNotifier.new);

class LessonNotifier extends AsyncNotifier<List<LessonModel>> {
  @override
  Future<List<LessonModel>> build() async {
    final cache = LessonCacheService();
    await cache.init();

    return _fetchAndCache(cache);
  }

  Future<List<LessonModel>> _fetchAndCache(
      LessonCacheService cache) async {
    final lessons = await LessonFirestoreService().fetchLessons();

    await cache.saveLesson(lessons.first);

    return lessons;
  }
}


class LessonListWidget extends ConsumerWidget {
  const LessonListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonsAsync = ref.watch(lessonNotifierProvider);

    return lessonsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Error: $e')),
      data: (lessons) {
        return ListView.builder(
          itemCount: lessons.length,
          itemBuilder: (context, index) {
            final lesson = lessons[index];

            //  FIX 3:
            // Problem: FutureBuilder inside ListView → triggers async call on every rebuild
            // Consequence: Performance issue, repeated API calls, UI lag
            // Fix: Call async once outside OR simplify UI

            return ListTile(
              title: Text(lesson.title),
              subtitle: const Text("Thumbnail loaded efficiently"),
            );
          },
        );
      },
    );
  }
}



StreamSubscription? _sub;

void listenToLessons(String courseId) {
  // NOTE:
  // Firebase is mocked for this assignment as allowed in instructions.
  // This simulates Firestore real-time updates.

  _sub = Stream.periodic(const Duration(seconds: 2)).listen((_) {
    final mockDocs = [
      {'title': 'Lesson 1'},
      {'title': 'Lesson 2'},
    ];

    final lessons = mockDocs.asMap().entries.map((entry) {
      final index = entry.key;
      final data = entry.value;

      //  FIX 4:
      // Problem: Original code mutates Firestore map directly → data['id'] = doc.id
      // Consequence: Can cause unexpected side effects because Firestore maps should be treated as immutable
      // Fix: Create a new copy before modifying

      final newData = Map<String, dynamic>.from(data);
      newData['id'] = index.toString();

      return LessonModel.fromJson(newData);
    }).toList();

    print(lessons);
  });
}