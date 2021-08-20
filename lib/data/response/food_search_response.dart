class FoodSearchResponse {
  int? offset;
  int? number;
  List<Recipe>? results;
  int? totalResults;

  FoodSearchResponse({
    this.offset,
    this.number,
    this.results,
    this.totalResults,
  });

  FoodSearchResponse.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Recipe>[];
      json['results'].forEach((v) {
        results!.add(new Recipe.fromJson(v));
      });
    } else {
      results = [];
    }
    offset = json['offset'];
    number = json['number'];
    totalResults = json['totalResults'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['offset'] = this.offset;
    data['number'] = this.number;
    data['totalResults'] = this.totalResults;
    return data;
  }
}

class Recipe {
  int? id;
  String? title;
  int? calories;
  String? carbs;
  String? fat;
  String? image;
  String? imageType;
  String? protein;

  Recipe({
    this.id,
    this.title,
    this.calories,
    this.carbs,
    this.fat,
    this.image,
    this.imageType,
    this.protein,
  });

  Recipe.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    calories = json['calories'];
    carbs = json['carbs'];
    fat = json['fat'];
    image = json['image'];
    imageType = json['imageType'];
    protein = json['protein'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['calories'] = this.calories;
    data['carbs'] = this.carbs;
    data['fat'] = this.fat;
    data['image'] = this.image;
    data['imageType'] = this.imageType;
    data['protein'] = this.protein;
    return data;
  }
}
