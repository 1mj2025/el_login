/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = StateNotifierProvider<AuthNotifier, User?>((ref){
  return AuthNotifier();
});

class AuthNotifier extends StateNotifier<User?>{
  AuthNotifier (): super(null){
    _init1();
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final AuthStorage _storage = AuthStorage();

  Future<void> _init1() async{
    _auth.authStateChanges().listen((User? user)){
      state = user;
      if (user != null){
        user.getIdToken().them((token) => _storage.saveToken(token!));
      }
      else{
        _storage.deleteToken();
      }
    }
    Future<void> signIn(String email, String password) async{
      try{
        await _auth.signInWithEmailAndPassword(email: email, password: password);
      }catch(e){
        rethrow;
      }
    }
    Future<void> singUp(String email, String password) async{
      try{
        await _auth.createUserWithEmailAndPassword(email: email, password: password);
      }
      catch (e){
        rethrow;
      }
    }
    Future<void>signOut () async{
      await _auth.signOut();
    }
  }
}
  
*/