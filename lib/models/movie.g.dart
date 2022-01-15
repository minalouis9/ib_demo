// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$_$_MovieModelFromJson(Map<String, dynamic> json) {
  return _$_MovieModel(
    id: json['id'] as int,
    title: json['title'] as String,
    overview: json['overview'] as String,
    poster: json['poster_path'] as String,
    date: DateTime.parse(json['release_date'] as String),
  );
}

Map<String, dynamic> _$_$_MovieModelToJson(_$_MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'poster_path': instance.poster,
      'release_date': instance.date.toIso8601String(),
    };
