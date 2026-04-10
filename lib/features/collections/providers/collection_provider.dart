import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/collection_model.dart';
import '../../../core/services/collection_cache_service.dart';
import '../data/mock_firestore.dart';

final collectionListProvider =
AsyncNotifierProvider<CollectionNotifier, List<CollectionModel>>(
    CollectionNotifier.new);

class CollectionNotifier extends AsyncNotifier<List<CollectionModel>> {
  final _cache = CollectionCacheService();

  @override
  Future<List<CollectionModel>> build() async {
    await _cache.init();

    final cached = _cache.getCollections();

    if (cached != null) {
      state = AsyncData(cached);
    }

    unawaited(_fetchFresh());

    return cached ?? [];
  }

  Future<void> _fetchFresh() async {
    final fresh = await MockFirestore.fetchCollections();
    state = AsyncData(fresh);
    await _cache.saveCollections(fresh);
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    final fresh = await MockFirestore.fetchCollections();
    state = AsyncData(fresh);
    await _cache.saveCollections(fresh);
  }
}