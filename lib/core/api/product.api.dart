import 'package:http/http.dart' as http;
import 'package:scarvs/app/routes/api.routes.dart';

class ProductAPI {
  final client = http.Client();
  final headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Access-Control-Allow-Origin': "*",
  };

  Future fetchProducts() async {
    const subUrl = '/product';
    final Uri uri = Uri.parse(ApiRoutes.baseurl + subUrl);
    final http.Response response = await client.get(
      uri,
      headers: headers,
    );
    final body = response.body;
    final statusCode = response.statusCode;

    if (statusCode == 200) {
      return body;
    } else {
      return body;
    }
  }
}