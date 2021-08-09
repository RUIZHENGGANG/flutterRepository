import 'BaseService.dart';

class UserService {
  static Future<String> main() async {
    // 1.构建URL
    final mainURL = "hotkey/json";
    // 2.发送网络请求获取结果
    final result = await MyHttp.request(mainURL);
    // 3.将Map转成Model
    print(result);
    return result;
  }


}




