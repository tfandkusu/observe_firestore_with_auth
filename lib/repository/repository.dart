import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/all.dart';

import 'animal.dart';

final animalListStreamProvider = StreamProvider.autoDispose((_) {
  CollectionReference ref = FirebaseFirestore.instance.collection('animals').orderBy('name');
  return ref.snapshots().map((snapshot) => snapshot.docs
      .map((doc) => doc.data())
      .map((data) => Animal(data['name']))
      .toList());
});
