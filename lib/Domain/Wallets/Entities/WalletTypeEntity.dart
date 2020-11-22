class WalletTypeEntity {
  WalletTypeEntity(
    this.code,
    this.msg,
    this.data,
  );

  final String code;
  final String msg;
  final List<WalletTypeData> data;
}

class WalletTypeData {
  WalletTypeData({
    this.id,
    this.name,
    this.icon,
  });

  final String id;
  final String name;
  final String icon;

  factory WalletTypeData.fromJson(Map<String, dynamic> json) => WalletTypeData(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        icon: json["icon"] == null ? null : json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "icon": icon == null ? null : icon,
      };
}
