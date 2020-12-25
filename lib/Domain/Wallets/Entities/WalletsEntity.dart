class WalletsEntity {
  WalletsEntity(
    this.code,
    this.msg,
    this.data,
    this.count,
  );

  final String code;
  final String msg;
  final List<WalletsData> data;
  final String count;
}

class WalletsData {
  WalletsData({
    this.id,
    this.name,
    this.icon,
    this.balance,
    this.walletName,
    this.walletTypeId,
  });

  final String id;
  final String name;
  final String icon;
  final String balance;
  final String walletName;
  final String walletTypeId;

  factory WalletsData.fromJson(Map<String, dynamic> json) => WalletsData(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        icon: json["icon"] == null ? null : json["icon"],
        balance: json["balance"] == null ? null : json["balance"],
        walletName: json["wallet_name"] == null ? null : json["wallet_name"],
        walletTypeId:
            json["wallet_type_id"] == null ? null : json["wallet_type_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "icon": icon == null ? null : icon,
        "balance": balance == null ? null : balance,
        "wallet_name": walletName == null ? null : walletName,
        "wallet_type_id": walletTypeId == null ? null : walletTypeId,
      };
}
