// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// part 'auth_state.dart';
// part 'auth_event.dart';

// class AuthBloc extends  Bloc<AuthEvent,AuthState> {
//   AuthBloc():super(AuthInitial())
//   {
//     on((event, emit) async{
//     if (event is Loa)

//     try {
//   final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//     email: emailAddress,
//     password: password,
//   );
// } on FirebaseAuthException catch (e) {
//   if (e.code == 'weak-password') {
//     print('The password provided is too weak.');
//   } else if (e.code == 'email-already-in-use') {
//     print('The account already exists for that email.');
//   }
// } catch (e) {
//   print(e);
// }
  


//   });
// }