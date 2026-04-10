import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_section_model.freezed.dart';
part 'collection_section_model.g.dart';

@freezed
class CollectionSectionModel with _$CollectionSectionModel {
  const factory CollectionSectionModel({
    required String id,
    required String collectionId,
    required String title,
    required int order,
    required int contentCount,
  }) = _CollectionSectionModel;

  factory CollectionSectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionSectionModelFromJson(json);
}