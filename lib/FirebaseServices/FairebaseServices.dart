import 'package:firebase_auth/firebase_auth.dart';

class Firebaseservices{
  static Future<UserCredential> registers(String email, String password) async {
    /// this way to make the  user to Register  using the  sign in user and password by firebase  by user and password
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return userCredential;
}
static Future<UserCredential>login(String email,String password)async{
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return userCredential;
}
}