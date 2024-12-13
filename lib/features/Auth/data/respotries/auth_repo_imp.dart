import 'package:dartz/dartz.dart';
import 'package:estore/features/Auth/domain/respotries/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

class AuthRepoImp extends AuthRepo {
  @override
  Future CompleteInformation(
      {String? name, String? phoneNumber, String? address}) {
    // TODO: implement CompleteInformation
    throw UnimplementedError();
  }

  @override
  // ignore: non_constant_identifier_names
  Future<Either<Exception, UserCredential>> LoginWithGoogle() async {
    // Trigger the authentication flow
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return right(
          await FirebaseAuth.instance.signInWithCredential(credential));
    } on Exception catch (e) {
       left(throw Exception('Failed to sign in with Google: $e'));
    }
  }
}
