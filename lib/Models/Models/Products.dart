class ProductModel {
  final int id;
  final String title;
   final String category;
  final double price;
  final String description;
  final String image;
  final RatingModel ratings;

  ProductModel(
      {required this.id,
      required this.category,
      required this.title,
      required this.description,
      required this.image,
      required this.price,
      required this.ratings});

  factory ProductModel.fromJson(jasonData) {
    return ProductModel(
        id: jasonData["id"],
        category: jasonData["category"],
        title: jasonData["title"],
        description: jasonData["description"],
        image: jasonData["image"],
        price: jasonData["price"],
        ratings:RatingModel.fromJson(jasonData['rating']) 
        );
  }
}

class RatingModel {
  final double rate;
  final double count;

  RatingModel({required this.rate, required this.count});

factory RatingModel.fromJson(jasonData){
   return RatingModel(rate: jasonData["rate"], count: jasonData["count"]);
  }
}
