// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
class _$MovieModelTearOff {
  const _$MovieModelTearOff();

  _MovieModel call(
      {required int id,
      required String title,
      required String overview,
      @JsonKey(name: 'poster_path') required String poster,
      @JsonKey(name: 'release_date') required DateTime date}) {
    return _MovieModel(
      id: id,
      title: title,
      overview: overview,
      poster: poster,
      date: date,
    );
  }

  MovieModel fromJson(Map<String, Object> json) {
    return MovieModel.fromJson(json);
  }
}

/// @nodoc
const $MovieModel = _$MovieModelTearOff();

/// @nodoc
mixin _$MovieModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get poster => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String overview,
      @JsonKey(name: 'poster_path') String poster,
      @JsonKey(name: 'release_date') DateTime date});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res> implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  final MovieModel _value;
  // ignore: unused_field
  final $Res Function(MovieModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? poster = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(
          _MovieModel value, $Res Function(_MovieModel) then) =
      __$MovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String overview,
      @JsonKey(name: 'poster_path') String poster,
      @JsonKey(name: 'release_date') DateTime date});
}

/// @nodoc
class __$MovieModelCopyWithImpl<$Res> extends _$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(
      _MovieModel _value, $Res Function(_MovieModel) _then)
      : super(_value, (v) => _then(v as _MovieModel));

  @override
  _MovieModel get _value => super._value as _MovieModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? poster = freezed,
    Object? date = freezed,
  }) {
    return _then(_MovieModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieModel implements _MovieModel {
  const _$_MovieModel(
      {required this.id,
      required this.title,
      required this.overview,
      @JsonKey(name: 'poster_path') required this.poster,
      @JsonKey(name: 'release_date') required this.date});

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String poster;
  @override
  @JsonKey(name: 'release_date')
  final DateTime date;

  @override
  String toString() {
    return 'MovieModel(id: $id, title: $title, overview: $overview, poster: $poster, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.poster, poster) ||
                const DeepCollectionEquality().equals(other.poster, poster)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(poster) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$MovieModelCopyWith<_MovieModel> get copyWith =>
      __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieModelToJson(this);
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {required int id,
      required String title,
      required String overview,
      @JsonKey(name: 'poster_path') required String poster,
      @JsonKey(name: 'release_date') required DateTime date}) = _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'poster_path')
  String get poster => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'release_date')
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieModelCopyWith<_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
