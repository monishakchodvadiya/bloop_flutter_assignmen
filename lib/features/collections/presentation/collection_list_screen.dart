import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/collection_provider.dart';

class CollectionListScreen extends ConsumerWidget {
  const CollectionListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collections = ref.watch(collectionListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Collections")),
      body: collections.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text(e.toString())),
        data: (data) {
          return RefreshIndicator(
            onRefresh: () =>
                ref.read(collectionListProvider.notifier).refresh(),
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (_, i) {
                final item = data[i];
                return ListTile(
                  title: Text(item.title),
                  subtitle: Text(item.description),
                );
              },
            ),
          );
        },
      ),
    );
  }
}