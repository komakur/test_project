import 'package:http/http.dart' as http;

/// Manages data from APIs
class NetworkHelper {
  /// URL to make a request to API
  final String url;

  ///  Constructor which takes URL to make a request
  NetworkHelper({required this.url});

  /// Gets data from API and returns Json object
  Future<String> getData() async {
    final http.Response response = await http.get(Uri.parse(url));

    const int successStatusCode = 200;

    if (response.statusCode == successStatusCode) {
      final String data = response.body;

      return data;
    } else {
      return 'Wrong request';
    }
  }
}
