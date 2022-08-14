import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vocabulary/models/vocabulary.dart';
import 'package:vocabulary/services/authentication_service.dart';

class DatabaseService {
  final FirebaseFirestore _firestore;

  DatabaseService(this._firestore);

  Future<QuerySnapshot> getAllVocabulary(String uid) {
    final DocumentReference userDatabase = _firestore
        .collection('users')
        .doc(AuthenticationService(FirebaseAuth.instance).user!.id);
    return userDatabase.collection('vocabulary').get();
  }

  bool addVocabulary(Vocabulary vocab) {
    final DocumentReference userDatabase = _firestore
        .collection('users')
        .doc(AuthenticationService(FirebaseAuth.instance).user!.id);
    userDatabase.collection('vocabulary').add(vocab.toJson());
    return false;
  }
}
