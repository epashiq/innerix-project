import 'dart:convert';

class CategoryResponse {
  final bool status;
  final CategoryData data;

  CategoryResponse({required this.status, required this.data});

  factory CategoryResponse.fromJson(String str) =>
      CategoryResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryResponse.fromMap(Map<String, dynamic> json) => CategoryResponse(
        status: json["status"],
        data: CategoryData.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data": data.toMap(),
      };
}

class CategoryData {
  final int currentPage;
  final List<Category> categories;
  final String? firstPageUrl;
  final String? lastPageUrl;
  final String path;
  final int perPage;
  final int total;

  CategoryData({
    required this.currentPage,
    required this.categories,
    required this.firstPageUrl,
    required this.lastPageUrl,
    required this.path,
    required this.perPage,
    required this.total,
  });

  factory CategoryData.fromMap(Map<String, dynamic> json) => CategoryData(
        currentPage: json["current_page"],
        categories: List<Category>.from(
            json["data"].map((x) => Category.fromMap(x))),
        firstPageUrl: json["first_page_url"],
        lastPageUrl: json["last_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        total: json["total"],
      );

  Map<String, dynamic> toMap() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(categories.map((x) => x.toMap())),
        "first_page_url": firstPageUrl,
        "last_page_url": lastPageUrl,
        "path": path,
        "per_page": perPage,
        "total": total,
      };
}

class Category {
  final int categoryId;
  final String categoryName;
  final String? categoryImage;

  Category({
    required this.categoryId,
    required this.categoryName,
    this.categoryImage,
  });

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        categoryId: json["category_id"],
        categoryName: json["category_name"],
        categoryImage: json["category_image"],
      );

  Map<String, dynamic> toMap() => {
        "category_id": categoryId,
        "category_name": categoryName,
        "category_image": categoryImage,
      };
}
