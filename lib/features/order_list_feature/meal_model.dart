class MealModel {
  late int id;
  late String title;
  late String description;
  late num price;
  late String imageUrl;

  MealModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imageUrl});

  MealModel.fromJson(Map<String, dynamic> fromjson) {
    id = fromjson['id'];
    title = fromjson['title'];
    description = fromjson['description'];
    price = fromjson['price'].toInt();
    imageUrl = fromjson['image_url'];
  }
}
