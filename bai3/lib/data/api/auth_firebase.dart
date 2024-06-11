import 'package:bai3/utils/constants/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthFirebase {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String> signIn(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
    return "login_success".tr;
  }

  Future<String> createUser(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
    return "register_success".tr;
  }

  Future<String> confirmPasswordReset(
      {required otp, required String newPassword}) async {
    try {
      await _firebaseAuth.confirmPasswordReset(
          code: otp, newPassword: newPassword);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
    return "change_password_success".tr;
  }

  Future<String?> sendPasswordResetEmail({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
    return null;
  }

  Future<String?> verifyResetCode({required String otp}) async {
    try {
      await _firebaseAuth.verifyPasswordResetCode(otp);
    } on FirebaseAuthException catch (e) {
      return _handleAuthException(e);
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
    return null;
  }

  String _handleAuthException(FirebaseAuthException e) {
    return AppConstants.errorMessages[e.code]?.tr ?? 'undefined_error'.tr;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
