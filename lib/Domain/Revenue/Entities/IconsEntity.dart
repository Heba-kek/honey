class IconsEntity {
  IconsEntity(
    this.code,
    this.data,
  );

  final String code;
  final List<IconsData> data;
}

class IconsData {
  IconsData({
    this.id,
    this.url,
  });

  final String id;
  final String url;

  factory IconsData.fromJson(Map<String, dynamic> json) => IconsData(
        id: json["id"] == null ? null : json["id"],
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "url": url == null ? null : url,
      };
}
