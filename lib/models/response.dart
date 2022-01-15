import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ib_demo/models/movie.dart';
import 'package:json_annotation/json_annotation.dart';

// 2. Declare this:
part 'response.freezed.dart';

part 'response.g.dart';

// 3. Annotate the class with @freezed
@freezed
// 4. Declare the class as abstract and add `with _$ClassName`
@immutable
class ResponseModel with _$ResponseModel {
  const factory ResponseModel(
          {required int page,
          @JsonKey(name: 'total_pages') required int totalPages,
          @JsonKey(name: 'results') required List<MovieModel> movies}) =
      _ResponseModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}
