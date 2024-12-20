class Slogan {
  String? id;
  String? slogan;

  Slogan({this.id, this.slogan});

  Slogan.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    slogan = json["slogan"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["slogan"] = slogan;
    return data;
  }

  static List<Slogan> ofSlogans(List value) {
    return value.map((e) => Slogan.fromJson(e)).toList();
  }
}
