import 'package:ib_demo/globals/globals_index.dart';
import 'package:ib_demo/helpers/network_helper.dart';
import 'package:ib_demo/models/models_index.dart';

class ApiHelper{
  final NetworkHelper _networkHelper = NetworkHelper();

  Future<ResponseModel> getMovies({required int page}) async {
    final response = await _networkHelper.getData(path: 'movie', queryParam: {
      'api_key': kApiKey,
      'page': page
    });

    return ResponseModel.fromJson(response);
  }
}