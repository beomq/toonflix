class WebtoonEpisodeModel {
  final String id;
  final String date;
  final String rating;
  final String title;

  WebtoonEpisodeModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        date = json['date'],
        rating = json['rating'],
        title = json['title'];
}
