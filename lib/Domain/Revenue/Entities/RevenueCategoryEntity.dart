class RevenueCategoryEntity {
  RevenueCategoryEntity(
    this.code,
    this.data,
  );

  final String code;
  final List<RevenueCategoryData> data;
}

class RevenueCategoryData {
  RevenueCategoryData({
    this.categoryName,
    this.typeCategory,
    this.categoryId,
    this.icon,
    this.color,
    this.subCategory,
    this.isChid,
  });

  final String categoryName;
  final String typeCategory;
  final String categoryId;
  final String icon;
  final String color;
  final List<SubCategory> subCategory;
  final int isChid;

  factory RevenueCategoryData.fromJson(Map<String, dynamic> json) =>
      RevenueCategoryData(
        categoryName:
            json["category_Name"] == null ? null : json["category_Name"],
        typeCategory:
            json["type_Category"] == null ? null : json["type_Category"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        icon: json["icon"] == null ? null : json["icon"],
        color: json["color"] == null ? null : json["color"],
        subCategory: json["sub_category"] == null
            ? null
            : List<SubCategory>.from(
                json["sub_category"].map((x) => SubCategory.fromJson(x))),
        isChid: json["is_Chid"] == null ? null : json["is_Chid"],
      );

  Map<String, dynamic> toJson() => {
        "category_Name": categoryName == null ? null : categoryName,
        "type_Category": typeCategory == null ? null : typeCategory,
        "category_id": categoryId == null ? null : categoryId,
        "icon": icon == null ? null : icon,
        "color": color == null ? null : color,
        "sub_category": subCategory == null
            ? null
            : List<dynamic>.from(subCategory.map((x) => x.toJson())),
        "is_Chid": isChid == null ? null : isChid,
      };
}

class SubCategory {
  SubCategory({
    this.subCategoryId,
    this.subCategoryName,
    this.subCategoryIcon,
  });

  final String subCategoryId;
  final String subCategoryName;
  final String subCategoryIcon;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        subCategoryId:
            json["sub_category_id"] == null ? null : json["sub_category_id"],
        subCategoryName: json["sub_category_name"] == null
            ? null
            : json["sub_category_name"],
        subCategoryIcon: json["sub_category_icon"] == null
            ? null
            : json["sub_category_icon"],
      );

  Map<String, dynamic> toJson() => {
        "sub_category_id": subCategoryId == null ? null : subCategoryId,
        "sub_category_name": subCategoryName == null ? null : subCategoryName,
        "sub_category_icon": subCategoryIcon == null ? null : subCategoryIcon,
      };
}
