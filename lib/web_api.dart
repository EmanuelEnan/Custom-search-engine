import 'dart:convert';

import 'package:web_search/web_model.dart';
import 'package:http/http.dart' as http;

class WebApi {
  // List<WebModel> list = [];
  Future<List<WebModel>> collectApi(String name) async {
    const String url =
        'https://contextualwebsearch-websearch-v1.p.rapidapi.com/api/Search/WebSearchAPI';

    Map<String, String> qParams = {
      'q': name,
      'pageNumber': '1',
      'pageSize': '10',
      'autoCorrect': 'false',
    };

    Uri uri = Uri.parse(url);
    final finalUri = uri.replace(queryParameters: qParams);

    final response = await http.get(
      finalUri,
      headers: {
        'X-RapidAPI-Host': 'contextualwebsearch-websearch-v1.p.rapidapi.com',
        'X-RapidAPI-Key': '5d6d373211msh40301b40c3e146fp1332acjsn7f3575229603'
      },
    );
    // print(response.statusCode);
    // print(response.body);
    // final json = response.body;
    // var services = jsonDecode(json.toString());
    // if (response.statusCode == 200) {
    //   for (Map i in services) {
    //     list.add(WebModel.fromJson(i));
    //   }
    //   return list;
    // } else {
    //   return list;
    // }

    if (response.statusCode == 200) {
      final resp = "[${response.body}]";
      List services = (jsonDecode(resp) as List<dynamic>);
      return services.map((json) => WebModel.fromJson(json)).toList();
      //
    } else {
      throw Exception('$Exception');
    }
  }
}
