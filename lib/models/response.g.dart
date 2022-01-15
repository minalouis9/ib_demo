// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseModel _$_$_ResponseModelFromJson(Map<String, dynamic> json) {
  return _$_ResponseModel(
    page: json['page'] as int,
    totalPages: json['total_pages'] as int,
    movies: (json['results'] as List<dynamic>)
        .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ResponseModelToJson(_$_ResponseModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'results': instance.movies,
    };
