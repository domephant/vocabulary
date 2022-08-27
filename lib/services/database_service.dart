import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vocabulary/models/vocabulary.dart';
import 'package:vocabulary/services/authentication_service.dart';

class DatabaseService {
  final FirebaseFirestore _firestore;

  DatabaseService(this._firestore);

  Future<QuerySnapshot> getAllVocabulary() async {
    final DocumentReference userDatabase = _firestore
        .collection('users')
        .doc(AuthenticationService(FirebaseAuth.instance).user!.id);
    return userDatabase.collection('vocabulary').get();
  }

  bool addVocabulary(Vocabulary vocab) {
    bool output = false;
    final DocumentReference userDatabase = _firestore
        .collection('users')
        .doc(AuthenticationService(FirebaseAuth.instance).user!.id);
    userDatabase
        .collection('vocabulary')
        .add(vocab.toJson())
        .then((value) => output = true)
        .onError((error, stackTrace) => output = false);
    return output;
  }

  Future<QuerySnapshot> getAllMotherTongues(AuthenticationService auth) {
    final DocumentReference userDatabase =
        _firestore.collection('users').doc(auth.getUid());
    return userDatabase
        .collection('data')
        .doc('tags')
        .collection('language_tags')
        .get();
  }

  Future<QuerySnapshot> getAllUserTags(AuthenticationService auth) {
    final DocumentReference userDatabase =
        _firestore.collection('users').doc(auth.getUid());
    return userDatabase
        .collection('data')
        .doc('tags')
        .collection('user_tags')
        .get();
  }
}
