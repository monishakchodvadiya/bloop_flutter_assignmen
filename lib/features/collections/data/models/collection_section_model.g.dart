// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionSectionModelImpl _$$CollectionSectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionSectionModelImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String,
      title: json['title'] as String,
      order: (json['order'] as num).toInt(),
      contentCount: (json['contentCount'] as num).toInt(),
    );

Map<String, dynamic> _$$CollectionSectionModelImplToJson(
        _$CollectionSectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'title': instance.title,
      'order': instance.order,
      'contentCount': instance.contentCount,
    };
