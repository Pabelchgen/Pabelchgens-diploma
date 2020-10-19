import 'package:firebase_auth/firebase_auth.dart';
import 'package:pet_assist/models/user.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  UserModel _userFromFirebase(User firebaseUser) {
    return firebaseUser == null
        ? null
        : UserModel(
            uid: firebaseUser.uid,
            email: firebaseUser.email,
            username: firebaseUser.displayName);
  }

// Stream<UserModel> get onAuthStateChanged {
//     return _firebaseAuth.authStateChanges().map(_userFromFirebase);
//   }

  Stream<UserModel> get authStateChanges {
    return _firebaseAuth
        .authStateChanges()
        // .map((User user) => _userFromFirebase(user));
        .map(_userFromFirebase);
  }

  Future createUserWithEmailAndPassword(String email, String password) async {
    try {
      final User user = (await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<UserModel> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final User user = (await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
    }
  }

  // Stream<UserModel> get onAuthStateChanged {
  //   return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  // }

  // Future<UserModel> createUserWithEmailAndPassword(
  //     String email, String password) async {
  //   try {
  //     final User user = (await _firebaseAuth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     ))
  //         .user;
  //     return _userFromFirebase(user);
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  // Future<void> signOut() async {
  //   return await _firebaseAuth.signOut();
  // }
}
