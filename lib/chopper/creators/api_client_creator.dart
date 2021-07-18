import 'package:chopper/chopper.dart';

class ApiClientCreator {

  static final String baseUrl = 'https://www.onlinegame.work';

  static ChopperClient create() {
    return ChopperClient(
        baseUrl: ApiClientCreator.baseUrl,
        converter: JsonConverter()
    );
  }
}