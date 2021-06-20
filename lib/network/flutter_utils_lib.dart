library flutter_utils_lib;

import 'dart:convert';
import 'package:http/http.dart';

class HttpClient {

  Future<Response> fetchGET(String getURL, {Map<String, String>? appendHeaders}) async {
    final response = await get(Uri.parse(getURL), headers: appendHeaders);
    return response;
  }

  Future<Response> fetchPOST(String postURL, {Map<String, String>? appendHeaders, Object? requestModel, Encoding? httpEncoding}) async {
    final response = await post(Uri.parse(postURL), headers: appendHeaders, body: requestModel, encoding: httpEncoding);
    return response;
  }
}
