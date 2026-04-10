// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectionSectionModel _$CollectionSectionModelFromJson(
    Map<String, dynamic> json) {
  return _CollectionSectionModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionSectionModel {
  String get id => throw _privateConstructorUsedError;
  String get collectionId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  int get contentCount => throw _privateConstructorUsedError;

  /// Serializes this CollectionSectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionSectionModelCopyWith<CollectionSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionSectionModelCopyWith<$Res> {
  factory $CollectionSectionModelCopyWith(CollectionSectionModel value,
          $Res Function(CollectionSectionModel) then) =
      _$CollectionSectionModelCopyWithImpl<$Res, CollectionSectionModel>;
  @useResult
  $Res call(
      {String id,
      String collectionId,
      String title,
      int order,
      int contentCount});
}

/// @nodoc
class _$CollectionSectionModelCopyWithImpl<$Res,
        $Val extends CollectionSectionModel>
    implements $CollectionSectionModelCopyWith<$Res> {
  _$CollectionSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? title = null,
    Object? order = null,
    Object? contentCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      contentCount: null == contentCount
          ? _value.contentCount
          : contentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionSectionModelImplCopyWith<$Res>
    implements $CollectionSectionModelCopyWith<$Res> {
  factory _$$CollectionSectionModelImplCopyWith(
          _$CollectionSectionModelImpl value,
          $Res Function(_$CollectionSectionModelImpl) then) =
      __$$CollectionSectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String collectionId,
      String title,
      int order,
      int contentCount});
}

/// @nodoc
class __$$CollectionSectionModelImplCopyWithImpl<$Res>
    extends _$CollectionSectionModelCopyWithImpl<$Res,
        _$CollectionSectionModelImpl>
    implements _$$CollectionSectionModelImplCopyWith<$Res> {
  __$$CollectionSectionModelImplCopyWithImpl(
      _$CollectionSectionModelImpl _value,
      $Res Function(_$CollectionSectionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? title = null,
    Object? order = null,
    Object? contentCount = null,
  }) {
    return _then(_$CollectionSectionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      contentCount: null == contentCount
          ? _value.contentCount
          : contentCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionSectionModelImpl implements _CollectionSectionModel {
  const _$CollectionSectionModelImpl(
      {required this.id,
      required this.collectionId,
      required this.title,
      required this.order,
      required this.contentCount});

  factory _$CollectionSectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionSectionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String collectionId;
  @override
  final String title;
  @override
  final int order;
  @override
  final int contentCount;

  @override
  String toString() {
    return 'CollectionSectionModel(id: $id, collectionId: $collectionId, title: $title, order: $order, contentCount: $contentCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionSectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.contentCount, contentCount) ||
                other.contentCount == contentCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, collectionId, title, order, contentCount);

  /// Create a copy of CollectionSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionSectionModelImplCopyWith<_$CollectionSectionModelImpl>
      get copyWith => __$$CollectionSectionModelImplCopyWithImpl<
          _$CollectionSectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionSectionModelImplToJson(
      this,
    );
  }
}

abstract class _CollectionSectionModel implements CollectionSectionModel {
  const factory _CollectionSectionModel(
      {required final String id,
      required final String collectionId,
      required final String title,
      required final int order,
      required final int contentCount}) = _$CollectionSectionModelImpl;

  factory _CollectionSectionModel.fromJson(Map<String, dynamic> json) =
      _$CollectionSectionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get collectionId;
  @override
  String get title;
  @override
  int get order;
  @override
  int get contentCount;

  /// Create a copy of CollectionSectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionSectionModelImplCopyWith<_$CollectionSectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
