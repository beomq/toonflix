class WebtoonModel {
  WebtoonModel({
    required this.id,
    required this.title,
    required this.thumb,
  });
  late final String id;
  late final String title;
  late final String thumb;

  WebtoonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    thumb = json['thumb'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['thumb'] = thumb;
    return data;
  }
}
