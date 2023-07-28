class WebtoonDetailModel {
  final String title;
  final String about;
  final String genre;
  final String age;

  WebtoonDetailModel.fromJson(Map<String, dynamic> json)
      : about = json['about'],
        title = json['title'],
        genre = json['genre'],
        age = json['age'];
}
