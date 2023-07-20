import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/toonflix_data/model/toon_model.dart';

class ApiService {
  static const String baseUrl =
      'https://webtoon-crawler.nomadcoders.workers.dev';
  static const String today = 'today';

  static Future<List<ToonModel>> getTodaysToons() async {
    List<ToonModel> toons = [];
    final url = Uri.parse('$baseUrl/$today');
    final reponse = await http.get(url);

    if (reponse.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(reponse.body);
      for (var webtoon in webtoons) {
        final toon = ToonModel.fromJson(webtoon);
        toons.add(toon);
      }
      return toons;
    }
    throw Error();
  }
}
