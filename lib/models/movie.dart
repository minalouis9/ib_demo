import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

// 2. Declare this:
part 'movie.freezed.dart';

part 'movie.g.dart';

// 3. Annotate the class with @freezed
@freezed
// 4. Declare the class as abstract and add `with _$ClassName`
@immutable
class MovieModel with _$MovieModel {
  const factory MovieModel(
      {required int id,
      required String title,
      required String overview,
      @JsonKey(name: 'poster_path') required String poster,
      @JsonKey(name: 'release_date') required DateTime date}) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
