import 'package:animal_list/repository/user_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/all.dart';

final likeSetStreamProvider = StreamProvider.autoDispose((ref) {
  final userIdAsyncValue = ref.watch(userIdStreamProvider);
  var userId = userIdAsyncValue?.data?.value;
  if (userId != null) {
    // サンプルコードのため、最初からユーザ固有のデータを持っているユーザのIDを使う。
    userId = "dummyUser";
    CollectionReference cref =
        FirebaseFirestore.instance.collection('/users/$userId/likes');
    return cref.snapshots().map((snapshot) => snapshot.docs.map((doc) => doc.data()['animalId']).toSet());
  } else {
    return Stream.value(Set<String>());
  }
});
