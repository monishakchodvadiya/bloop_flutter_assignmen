// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionModelImpl _$$CollectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      coverImageUrl: json['coverImageUrl'] as String,
      creatorId: json['creatorId'] as String,
      isPremium: json['isPremium'] as bool,
      sectionCount: (json['sectionCount'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$CollectionModelImplToJson(
        _$CollectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'coverImageUrl': instance.coverImageUrl,
      'creatorId': instance.creatorId,
      'isPremium': instance.isPremium,
      'sectionCount': instance.sectionCount,
      'createdAt': instance.createdAt.toIso8601String(),
    };
