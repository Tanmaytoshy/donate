import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DonateFirebaseUser {
  DonateFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DonateFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DonateFirebaseUser> donateFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DonateFirebaseUser>(
      (user) {
        currentUser = DonateFirebaseUser(user);
        return currentUser!;
      },
    );
