import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'pizza.dart';

class HttpHelper {
  static final HttpHelper _httpHelper = HttpHelper._internal();
  HttpHelper._internal();
  factory HttpHelper() {
    return _httpHelper;
  }

  final String authority = 'gor99.wiremockapi.cloud';
  final String path = 'pizzalist';

  // method to get list of pizzas
  Future<List<Pizza>> getPizzaList() async {
    final Uri url = Uri.https(authority, path);
    final http.Response result = await http.get(url);
    if (result.statusCode == HttpStatus.ok) {
      final decoded = json.decode(result.body);

      // The response body may be a List (JSON array) or an object that
      // contains the list under a key (e.g. {"pizzas": [...]}).
      Iterable items;
      if (decoded is List) {
        items = decoded;
      } else if (decoded is Map && decoded.values.isNotEmpty) {
        // try common keys first, otherwise take first list value if any
        if (decoded['pizzas'] is List) {
          items = decoded['pizzas'];
        } else if (decoded['data'] is List) {
          items = decoded['data'];
        } else {
          // find first value that's a List
          final firstList = decoded.values.firstWhere(
            (v) => v is List,
            orElse: () => <dynamic>[],
          );
          items = (firstList is List) ? firstList : <dynamic>[];
        }
      } else {
        items = <dynamic>[];
      }

      List<Pizza> pizzas = items
          .map<Pizza>((i) => Pizza.fromJson(Map<String, dynamic>.from(i)))
          .toList();
      return pizzas;
    } else {
      return [];
    }
  }

  // method to post a pizza
  Future<String> postPizza(Pizza pizza) async {
    const postPath = '/pizza';
    String post = json.encode(pizza.toJson());
    Uri url = Uri.https(authority, postPath);
    http.Response r = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: post,
    );
    return r.body;
  }

   Future<String> putPizza(Pizza pizza) async {
    const putPath = '/pizza';
    String put = json.encode(pizza.toJson());
    Uri url = Uri.https(authority, putPath);
    http.Response r = await http.put(url, body: put);
    return r.body;
  }

  Future<String> deletePizza(int id) async {
    const deletePath = '/pizza';
    Uri url = Uri.https(authority, deletePath);
    http.Response r = await http.delete(url);
    return r.body;
  }
  
}