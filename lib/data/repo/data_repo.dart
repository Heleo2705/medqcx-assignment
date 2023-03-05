import 'package:medqcx/constants/api_urls.dart';
import 'package:medqcx/data/models/device_response_model/device_model.dart';
import 'package:medqcx/data/models/device_response_model/device_response_model.dart';
import 'package:medqcx/utils/api_utils.dart';

import '../models/failure.dart';
import 'package:dartz/dartz.dart';

class DataRepo {
  Future<Either<Failure, List<DeviceModel>>> getDeviceInfo() async {
    try {
      final response = await ApiHelper.get(path: ApiUrls.getModels);
      final model = DeviceResponseModel.fromJson(response?.data);
      return Right(model.list ?? []);
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
