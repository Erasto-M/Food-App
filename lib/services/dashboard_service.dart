import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_stacked_app2/Models/food_details_model.dart';

class DashboardService {
  final currentUser = FirebaseAuth.instance.currentUser;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // send food details to firebase
  Future<void> sendFoodDetailsToFirebase({
    required String foodName,
    required String foodCategory,
    required String foodPrice,
    required String foodDescription,
    required String foodRating,
    required String foodDeliveryTime,
    required String foodDeliveryCost,
    required String foodQuantity,
    required FoodDetailsModel foodDetailsModel,
  }) async {
    try {
      String? currentUserId = currentUser!.uid;
      if (currentUserId != null) {
        CollectionReference foodDetailsDB = firestore.collection("Foods");
        final newFoodWithId = foodDetailsModel.copyWith(
            id: foodDetailsDB.doc().id, userId: currentUserId);
        await foodDetailsDB.doc(newFoodWithId.id).set(
              newFoodWithId.toMap(),
            );
        Fluttertoast.showToast(msg: "Food added successfully");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}
