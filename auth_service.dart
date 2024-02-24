import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<String?> signUp(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      return e.toString();
    }
    return null;
  }
  Future<String?> signIn(String email, String password) async{
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }catch (e){
      return e.toString();
    }
    return null;
  }
  Future<void> signOut() async{
    await auth.signOut();
  }
}
