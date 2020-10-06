import 'package:equatable/equatable.dart';

class ExpenEntity extends Equatable {
  ExpenEntity(
    this.code,
    this.data,
  );
  final String code;
  final List<ExpenData> data;

  @override
  List<Object> get props => [this.code, this.data];
}

class ExpenData {
  ExpenData({
    this.categoryName,
    this.typeCategory,
    this.categoryId,
    this.icon,
  });

  final String categoryName;
  final String typeCategory;
  final String categoryId;
  final String icon;

  factory ExpenData.fromJson(Map<String, dynamic> json) => ExpenData(
        categoryName:
            json["category_Name"] == null ? null : json["category_Name"],
        typeCategory:
            json["type_Category"] == null ? null : json["type_Category"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        icon: json["icon"] == null ? null : json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "category_Name": categoryName == null ? null : categoryName,
        "type_Category": typeCategory == null ? null : typeCategory,
        "category_id": categoryId == null ? null : categoryId,
        "icon": icon == null ? null : icon,
      };
}
