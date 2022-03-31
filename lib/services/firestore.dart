import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yummy/services/models.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Add a journal entry for the user
  Future<void> addJournalEntry(JournalResult result) {
    // var user = AuthService().user!;
    // var ref = _db.collection('users/${user.uid}/journals').doc();
    var ref = _db.collection('users/${123}/journals').doc();

    var data = {
      'numHomeCookedMeals': result.numHomeCookedMeals,
      'mealTimes': result.mealTimes,
      'dataEntryTime': result.dataEntryTime
    };

    return ref.set(data);
  }
}
