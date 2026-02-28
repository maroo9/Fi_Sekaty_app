import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fi_sekaty_carpooling_app/Models/Trip_model.dart';
import 'package:fi_sekaty_carpooling_app/Models/User_model.dart';
import 'package:fi_sekaty_carpooling_app/fetures/mainlayout/tabs/Trips/Trips.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class Firebaseservices {
  static Future<UserCredential> registers(String email, String password) async {
    /// this way to make the  user to Register  using the  sign in user and password by firebase  by user and password
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }

  static Future<UserCredential> login(String email, String password) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }

  static addUserToFirestore(UserModel user) {
    /// caled or take instance from firestore :
    FirebaseFirestore db = FirebaseFirestore.instance;
    CollectionReference<UserModel> usercollection = db
        .collection("Users")
        .withConverter<UserModel>(
      fromFirestore: (snapshot, _) => UserModel.fromJson(snapshot.data()!),
      toFirestore: (user, _) => user.toJson(),
    );
    DocumentReference<UserModel> UserDocument = usercollection.doc(user.id);
    return UserDocument.set(user);
  }

    ///>>>>> this normal  way to create  the collection  to firestore that store or reserve the place like: the id and the name and email
    // FirebaseFirestore db = FirebaseFirestore.instance;
    // // CollectionReference <Map<String, dynamic>> usercollection = db.collection(
    // //     "users");
    // // DocumentReference <Map<String, dynamic>> UserDocument = usercollection.doc(
    // //     user.id);

   static getUserById(String  id)async {
      /// caled or take instance from firestore :
      FirebaseFirestore db = FirebaseFirestore.instance;
      CollectionReference<UserModel> usercollection = db
          .collection("Users")
          .withConverter<UserModel>(
        fromFirestore: (snapshot, _) => UserModel.fromJson(snapshot.data()!),
        toFirestore: (user, _) => user.toJson(),
      );
  DocumentReference<UserModel> UserDocument = usercollection.doc(id);
  DocumentSnapshot<UserModel> userSnapshot = await UserDocument.get();
      return userSnapshot.data()!;
    }
    static Future<void> logout() async {
      await FirebaseAuth.instance.signOut();
    }
    static addTripsinfirestore(TripModel Trips){
    FirebaseFirestore dbs=FirebaseFirestore.instance;
    CollectionReference<TripModel> Tripscpllections=dbs.collection("Trips").withConverter(
        fromFirestore: (snapshot,_)=>TripModel.fromjason(snapshot.data()!),
        toFirestore:(Trips,_)=>Trips.Tojason()
    );
    DocumentReference<TripModel> TripsDocuments=Tripscpllections.doc(Trips.id);
    return TripsDocuments.set(Trips);

    }
    /// when we get the trips  by id not bu trip model
    static  getTheTrips( )async{
    FirebaseFirestore ff=FirebaseFirestore.instance;
    CollectionReference<TripModel> allTrips=ff.collection("Trips").withConverter(
        fromFirestore: (snapshot,_)=>TripModel.fromjason(snapshot.data()!),
        toFirestore: (Trip,_)=>Trip.Tojason());
    DocumentReference<TripModel> dcoumnetrefrances=allTrips.doc();
    DocumentSnapshot<TripModel> documentSnapshot=await dcoumnetrefrances.get();
    return documentSnapshot.data();
    }

  }
