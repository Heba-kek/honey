class SickNameEntity {
  SickNameEntity(
    this.code,
    this.sickName,
  );

  final String code;
  final List<SickName> sickName;
}

class SickName {
  SickName({
    this.sickName,
  });

  final String sickName;

  factory SickName.fromJson(Map<String, dynamic> json) => SickName(
        sickName: json["sick_name"] == null ? null : json["sick_name"],
      );

  Map<String, dynamic> toJson() => {
        "sick_name": sickName == null ? null : sickName,
      };
}
