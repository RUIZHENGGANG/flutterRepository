import 'BaseService.dart';

class UserService {
  static Future<String> login(String name,String pwd) async {
    // 1.构建URL
    final loginURL = "user/login";
    // 2.发送网络请求获取结果
    final result = await MyHttp.request(loginURL);
    // 3.将Map转成Model
    print(result);
    return result;
  }

  static Future<String> register(String name,String pwd) async {
    // 1.构建URL
    final registerURL = "user/register";
    // 2.发送网络请求获取结果
    final result = await MyHttp.request(registerURL);
    // 3.将Map转成Model
    print(result);
    return result;
  }

}




