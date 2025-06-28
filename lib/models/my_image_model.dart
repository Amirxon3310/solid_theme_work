class MyImage {
  final int id;
  final String image;

  MyImage({
    required this.id,
    required this.image,
  });

  MyImage copyWith({
    int? id,
    String? image,
  }) =>
      MyImage(
        id: id ?? this.id,
        image: image ?? this.image,
      );

  factory MyImage.fromMap(Map<String, dynamic> json) => MyImage(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "image": image,
      };
}
