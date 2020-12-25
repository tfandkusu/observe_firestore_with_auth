import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/all.dart';

import 'animal.dart';

final animalListStreamProvider = StreamProvider.autoDispose((_) {
  CollectionReference ref = FirebaseFirestore.instance.collection('animals');
  return ref.snapshots().map((snapshot) {
    final list = snapshot.docs
        .map((doc) => doc.data())
        .map((data) => Animal(data['name']))
        .toList();
    list.sort((a, b) => a.name.compareTo(b.name));
    return list;
  });
});
