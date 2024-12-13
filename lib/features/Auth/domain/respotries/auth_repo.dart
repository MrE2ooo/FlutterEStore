import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class AuthRepo {
  // ignore: non_constant_identifier_names
  Future<Either<Exception,UserCredential>> LoginWithGoogle();
 
  // ignore: non_constant_identifier_names
  Future CompleteInformation({@required String name,@required String phoneNumber,@required String address});
}
