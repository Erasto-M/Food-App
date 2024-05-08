// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FoodDetailsModel {
  final String? id;
  final String? userId;
  final String category;
  final String name;
  final String imageUrl;
  final String price;
  final String description;
  final String rating;
  final String deliveryTime;
  final String deliveryCost;
  final String quantity;
  const FoodDetailsModel({
    this.id = '',
    this.userId = '',
    required this.category,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
    required this.rating,
    required this.deliveryTime,
    required this.deliveryCost,
    required this.quantity,
  });

  FoodDetailsModel copyWith({
    String? id,
    String? userId,
    String? category,
    String? name,
    String? imageUrl,
    String? price,
    String? description,
    String? rating,
    String? deliveryTime,
    String? deliveryCost,
    String? quantity,
  }) {
    return FoodDetailsModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      category: category ?? this.category,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      description: description ?? this.description,
      rating: rating ?? this.rating,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      deliveryCost: deliveryCost ?? this.deliveryCost,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'category': category,
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'description': description,
      'rating': rating,
      'deliveryTime': deliveryTime,
      'deliveryCost': deliveryCost,
      'quantity': quantity,
    };
  }

  factory FoodDetailsModel.fromMap(Map<String, dynamic> map) {
    return FoodDetailsModel(
      id: (map["id"] ?? '') as String,
      userId: (map["userId"] ?? '') as String,
      category: (map["category"] ?? '') as String,
      name: (map["name"] ?? '') as String,
      imageUrl: (map["imageUrl"] ?? '') as String,
      price: (map["price"] ?? '') as String,
      description: (map["description"] ?? '') as String,
      rating: (map["rating"] ?? '') as String,
      deliveryTime: (map["deliveryTime"] ?? '') as String,
      deliveryCost: (map["deliveryCost"] ?? '') as String,
      quantity: (map["quantity"] ?? '') as String,
    );
  }
}
