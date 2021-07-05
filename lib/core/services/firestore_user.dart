
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopping_market_app/model/user_models.dart';

class FireStoreUser{
  final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('Users');

  Future<void>addUserToFireStore(UserModel userModel)async{
    return await _userCollection.doc(userModel.userId)
        .set(userModel.toJson());
  }
}