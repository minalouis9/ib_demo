// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) {
  return _ResponseModel.fromJson(json);
}

/// @nodoc
class _$ResponseModelTearOff {
  const _$ResponseModelTearOff();

  _ResponseModel call(
      {required int page,
      @JsonKey(name: 'total_pages') required int totalPages,
      @JsonKey(name: 'results') required List<MovieModel> movies}) {
    return _ResponseModel(
      page: page,
      totalPages: totalPages,
      movies: movies,
    );
  }

  ResponseModel fromJson(Map<String, Object> json) {
    return ResponseModel.fromJson(json);
  }
}

/// @nodoc
const $ResponseModel = _$ResponseModelTearOff();

/// @nodoc
mixin _$ResponseModel {
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieModel> get movies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) then) =
      _$ResponseModelCopyWithImpl<$Res>;
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'results') List<MovieModel> movies});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  final ResponseModel _value;
  // ignore: unused_field
  final $Res Function(ResponseModel) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? movies = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc
abstract class _$ResponseModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$ResponseModelCopyWith(
          _ResponseModel value, $Res Function(_ResponseModel) then) =
      __$ResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'results') List<MovieModel> movies});
}

/// @nodoc
class __$ResponseModelCopyWithImpl<$Res>
    extends _$ResponseModelCopyWithImpl<$Res>
    implements _$ResponseModelCopyWith<$Res> {
  __$ResponseModelCopyWithImpl(
      _ResponseModel _value, $Res Function(_ResponseModel) _then)
      : super(_value, (v) => _then(v as _ResponseModel));

  @override
  _ResponseModel get _value => super._value as _ResponseModel;

  @override
  $Res call({
    Object? page = freezed,
    Object? totalPages = freezed,
    Object? movies = freezed,
  }) {
    return _then(_ResponseModel(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseModel implements _ResponseModel {
  const _$_ResponseModel(
      {required this.page,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'results') required this.movies});

  factory _$_ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ResponseModelFromJson(json);

  @override
  final int page;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'results')
  final List<MovieModel> movies;

  @override
  String toString() {
    return 'ResponseModel(page: $page, totalPages: $totalPages, movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResponseModel &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)) &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(totalPages) ^
      const DeepCollectionEquality().hash(movies);

  @JsonKey(ignore: true)
  @override
  _$ResponseModelCopyWith<_ResponseModel> get copyWith =>
      __$ResponseModelCopyWithImpl<_ResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResponseModelToJson(this);
  }
}

abstract class _ResponseModel implements ResponseModel {
  const factory _ResponseModel(
          {required int page,
          @JsonKey(name: 'total_pages') required int totalPages,
          @JsonKey(name: 'results') required List<MovieModel> movies}) =
      _$_ResponseModel;

  factory _ResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseModel.fromJson;

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'results')
  List<MovieModel> get movies => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResponseModelCopyWith<_ResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
