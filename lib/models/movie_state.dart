// 1. Import this:
import 'package:freezed_annotation/freezed_annotation.dart';

// 2. Declare this:
part 'movie_state.freezed.dart';

// 3. Annotate the class with @freezed
@freezed
// 4. Declare the class as abstract and add `with _$ClassName`
class MovieState with _$MovieState {
  // 5. Create a `const factory` constructor for each valid state
  const factory MovieState.loading() = _Loading;
  const factory MovieState.error(String errorText) = _Error;
  const factory MovieState.data(dynamic data) = _Data;
}