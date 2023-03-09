import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class StackOneFirebaseUser {
  StackOneFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

StackOneFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<StackOneFirebaseUser> stackOneFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<StackOneFirebaseUser>(
      (user) {
        currentUser = StackOneFirebaseUser(user);
        return currentUser!;
      },
    );
