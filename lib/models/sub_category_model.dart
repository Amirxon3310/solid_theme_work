class SubCategory {
  final int id;
  final String nameUz;
  final String nameCrl;
  final String nameRu;
  final String image;
  final int categoryId;

  SubCategory({
    required this.id,
    required this.nameUz,
    required this.nameCrl,
    required this.nameRu,
    required this.image,
    required this.categoryId,
  });

  SubCategory copyWith({
    int? id,
    String? nameUz,
    String? nameCrl,
    String? nameRu,
    String? image,
    int? categoryId,
  }) =>
      SubCategory(
        id: id ?? this.id,
        nameUz: nameUz ?? this.nameUz,
        nameCrl: nameCrl ?? this.nameCrl,
        nameRu: nameRu ?? this.nameRu,
        image: image ?? this.image,
        categoryId: categoryId ?? this.categoryId,
      );

  factory SubCategory.fromMap(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        nameUz: json["name_uz"],
        nameCrl: json["name_crl"],
        nameRu: json["name_ru"],
        image: json["image"],
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name_uz": nameUz,
        "name_crl": nameCrl,
        "name_ru": nameRu,
        "image": image,
        "category_id": categoryId,
      };
}
