import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/all.dart';

/// 認証状態プロバイダー
final authStreamProvider = StreamProvider.autoDispose((_) {
  return FirebaseAuth.instance.authStateChanges().map((user) => user != null);
});

/// UserIdプロバイダー
final userIdStreamProvider = StreamProvider.autoDispose((_) {
  return FirebaseAuth.instance.authStateChanges().map((user) {
    if (user != null) {
      return user.uid;
    } else {
      return null;
    }
  });
});
