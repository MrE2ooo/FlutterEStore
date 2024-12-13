import 'package:flutter/material.dart';

abstract class AuthRepo {
  // ignore: non_constant_identifier_names
  Future LoginWithGoogle();
 
  // ignore: non_constant_identifier_names
  Future CompleteInformation({@required String name,@required String phoneNumber,@required String address});
}
