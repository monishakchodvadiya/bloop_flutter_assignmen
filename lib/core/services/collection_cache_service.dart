import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import '../../features/collections/data/models/collection_model.dart';

class CollectionCacheService {
  static const _boxName = 'collections_box';
  late Box _box;

  Future<void> init() async {
    final dir = await getApplicationSupportDirectory();
    Hive.init(dir.path);
    _box = await Hive.openBox(_boxName);
  }

  Future<void> saveCollections(List<CollectionModel> collections) async {
    final jsonList = collections.map((e) => e.toJson()).toList();
    await _box.put('collections', jsonList);
  }

  List<CollectionModel>? getCollections() {
    final data = _box.get('collections');

    if (data == null) return null;

    return (data as List)
        .map((e) => CollectionModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  Future<void> clearAll() async {
    await _box.clear();
  }
}