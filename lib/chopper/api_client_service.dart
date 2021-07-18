import './creators/api_client_creator.dart';
import './api_client.dart';

class ApiClientService {

  final ApiClient client = ApiClient.create(ApiClientCreator.create());

  Future collApi(dynamic userId) async {
    // collApi関数を実行する(自動生成で作成されたクラスの)
    final responce = await this.client.collApi();

    if (responce.isSuccessful) {
      final body = responce.body;

      // API通信結果が返って来た時の処理を書く
      print(body);
    }
  }
}