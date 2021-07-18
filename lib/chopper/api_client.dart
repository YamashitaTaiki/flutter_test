// YOUR_FILE.dart

import "dart:async";
import 'package:chopper/chopper.dart';

// This is necessary for the generator to work.
part "api_client.chopper.dart";

@ChopperApi(baseUrl: "/")
abstract class ApiClient extends ChopperService {

  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static ApiClient create([ChopperClient client]) =>
      _$ApiClient(client);

  @Get(path: '/')
  Future<Response> collApi({
    @Query('user_id')
    dynamic userId = 1,
  });
}