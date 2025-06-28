import 'package:solid_theme_work/models/my_image_model.dart';
import 'package:solid_theme_work/models/sub_category_model.dart';

class ProductModel {
  final int id;
  final String nameUz;
  final String nameCrl;
  final String nameRu;
  final String image;
  final String backgroundImg;
  final List<SubCategory> subCategories;
  final List<Product> products;

  ProductModel({
    required this.id,
    required this.nameUz,
    required this.nameCrl,
    required this.nameRu,
    required this.image,
    required this.backgroundImg,
    required this.subCategories,
    required this.products,
  });

  ProductModel copyWith({
    int? id,
    String? nameUz,
    String? nameCrl,
    String? nameRu,
    String? image,
    String? backgroundImg,
    List<SubCategory>? subCategories,
    List<Product>? products,
  }) =>
      ProductModel(
        id: id ?? this.id,
        nameUz: nameUz ?? this.nameUz,
        nameCrl: nameCrl ?? this.nameCrl,
        nameRu: nameRu ?? this.nameRu,
        image: image ?? this.image,
        backgroundImg: backgroundImg ?? this.backgroundImg,
        subCategories: subCategories ?? this.subCategories,
        products: products ?? this.products,
      );

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        nameUz: json["name_uz"],
        nameCrl: json["name_crl"],
        nameRu: json["name_ru"],
        image: json["image"],
        backgroundImg: json["background_img"],
        subCategories: List<SubCategory>.from(
          json["sub_categories"].map(
            (x) => SubCategory.fromMap(x),
          ),
        ),
        products:
            List<Product>.from(json["products"].map((x) => Product.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name_uz": nameUz,
        "name_crl": nameCrl,
        "name_ru": nameRu,
        "image": image,
        "background_img": backgroundImg,
        "sub_categories":
            List<dynamic>.from(subCategories.map((x) => x.toMap())),
        "products": List<dynamic>.from(products.map((x) => x.toMap())),
      };
}

class Product {
  final int id;
  final String nameUz;
  final String nameCrl;
  final String nameRu;
  final String color;
  final String price;
  final int qty;
  final int discountedPrice;
  final String discount;
  final String discountType;
  final String discountStart;
  final String discountEnd;
  final String descriptionUz;
  final String descriptionCrl;
  final String descriptionRu;
  final int categoryId;
  final int brandId;
  final List<MyImage> images;

  Product({
    required this.id,
    required this.nameUz,
    required this.nameCrl,
    required this.nameRu,
    required this.color,
    required this.price,
    required this.qty,
    required this.discountedPrice,
    required this.discount,
    required this.discountType,
    required this.discountStart,
    required this.discountEnd,
    required this.descriptionUz,
    required this.descriptionCrl,
    required this.descriptionRu,
    required this.categoryId,
    required this.brandId,
    required this.images,
  });

  Product copyWith({
    int? id,
    String? nameUz,
    String? nameCrl,
    String? nameRu,
    String? color,
    String? price,
    int? qty,
    int? discountedPrice,
    String? discount,
    String? discountType,
    String? discountStart,
    String? discountEnd,
    String? descriptionUz,
    String? descriptionCrl,
    String? descriptionRu,
    int? categoryId,
    int? brandId,
    List<MyImage>? images,
  }) =>
      Product(
        id: id ?? this.id,
        nameUz: nameUz ?? this.nameUz,
        nameCrl: nameCrl ?? this.nameCrl,
        nameRu: nameRu ?? this.nameRu,
        color: color ?? this.color,
        price: price ?? this.price,
        qty: qty ?? this.qty,
        discountedPrice: discountedPrice ?? this.discountedPrice,
        discount: discount ?? this.discount,
        discountType: discountType ?? this.discountType,
        discountStart: discountStart ?? this.discountStart,
        discountEnd: discountEnd ?? this.discountEnd,
        descriptionUz: descriptionUz ?? this.descriptionUz,
        descriptionCrl: descriptionCrl ?? this.descriptionCrl,
        descriptionRu: descriptionRu ?? this.descriptionRu,
        categoryId: categoryId ?? this.categoryId,
        brandId: brandId ?? this.brandId,
        images: images ?? this.images,
      );

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        nameUz: json["name_uz"],
        nameCrl: json["name_crl"],
        nameRu: json["name_ru"],
        color: json["color"],
        price: json["price"],
        qty: json["qty"],
        discountedPrice: json["discounted_price"],
        discount: json["discount"],
        discountType: json["discount_type"],
        discountStart: json["discount_start"],
        discountEnd: json["discount_end"],
        descriptionUz: json["description_uz"],
        descriptionCrl: json["description_crl"],
        descriptionRu: json["description_ru"],
        categoryId: json["category_id"],
        brandId: json["brand_id"],
        images:
            List<MyImage>.from(json["images"].map((x) => MyImage.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name_uz": nameUz,
        "name_crl": nameCrl,
        "name_ru": nameRu,
        "color": color,
        "price": price,
        "qty": qty,
        "discounted_price": discountedPrice,
        "discount": discount,
        "discount_type": discountType,
        "discount_start": discountStart,
        "discount_end": discountEnd,
        "description_uz": descriptionUz,
        "description_crl": descriptionCrl,
        "description_ru": descriptionRu,
        "category_id": categoryId,
        "brand_id": brandId,
        "images": List<dynamic>.from(images.map((x) => x.toMap())),
      };
}
