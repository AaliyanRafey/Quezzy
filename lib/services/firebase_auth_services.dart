// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:google_sign_in/google_sign_in.dart';

// class FirebaseAuthServices {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn(); // ✅

//   Future<User?> signInWithGoogle() async {
//     try {
//       // Step 1: Ask the user to select an account
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

//       if (googleUser == null) {
//         print("User cancelled Google Sign-In");
//         return null;
//       }

//       // Step 2: Get the tokens from the selected account
//       final GoogleSignInAuthentication googleAuth =
//           await googleUser.authentication;

//       // Step 3: Use the tokens to create a Firebase credential
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );

//       // Step 4: Sign in to Firebase
//       final UserCredential userCred = await _auth.signInWithCredential(
//         credential,
//       );

//       return userCred.user;
//     } catch (e) {
//       print('Google Sign-In error: $e');
//       return null;
//     }
//   }

//   //--------------
//   //EMAIL AND PASSWORD SIGN UP
//   //------------

//   Future<User?> registerWithEmail(String email, String password) async {
//     try {
//       UserCredential userCred = await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCred.user;
//     } catch (e) {
//       print('Register error : $e');
//       return null;
//     }
//   }

//   //--------------
//   //EMAIL AND PASSWORD SIGN Ins
//   //------------

//   Future<User?> loginWithEmail(String email, String password) async {
//     try {
//       UserCredential userCred = await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCred.user;
//     } catch (e) {
//       print('Sign in Error : $e');
//       return null;
//     }
//   }

//   //--------------
//   //Google SIGN In
//   //------------

//   // Google Sign-In
// }
