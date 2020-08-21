import 'package:dio/dio.dart';

// api hosts
const hotTopicsHost = 'https://www.v2ex.com/api/topics/hot.json';
const newTopicsHost = 'https://www.v2ex.com/api/topics/latest.json';

class HttpUtils {
  /// global dio object
  static Dio dio;

  /// default options
  static const int CONNECT_TIMEOUT = 10000;
  static const int RECEIVE_TIMEOUT = 10000;

  static Future getHotTopics() async {
    Dio dio = createInstance();
    var result;
    try {
      Response response = await dio.get(hotTopicsHost);
      result = response.data;
    } catch (e) {

    }
    return result;
  }

  static Future getNewTopics() async {
    Dio dio = createInstance();
    var result;
    try {
      Response response = await dio.get(newTopicsHost);
      result = response.data;
    } catch (e) {

    }
    return result;
  }

  /// 创建 dio 实例对象
  static Dio createInstance() {
    if (dio == null) {
      /// 全局属性：请求前缀、连接超时时间、响应超时时间
      BaseOptions options = new BaseOptions(
        connectTimeout: CONNECT_TIMEOUT,
        receiveTimeout: RECEIVE_TIMEOUT,
      );

      dio = new Dio(options);
    }

    return dio;
  }

  /// 清空 dio 对象
  static clear() {
    dio = null;
  }
}