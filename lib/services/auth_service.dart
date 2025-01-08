import 'package:employee_attendance_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService extends ChangeNotifier{
  final SupabaseClient _supabaseClient = Supabase.instance.client;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set setIsLoading(bool value){
    _isLoading = value;
    notifyListeners();
  }

  Future registerEmployee(String email, String password, BuildContext context) async{
    try {
      setIsLoading = true;
      if (email == "" || password == "") {
        throw("All fields are required!");
      }
      final AuthResponse response = await _supabaseClient.auth.signUp(email: email ,password: password);
      Utils.showSnackBar(context, "Success! You can Login now", color: Colors.green);
      Navigator.pop(context);
      setIsLoading = false;
    } catch (e) {
      setIsLoading = false;
      Utils.showSnackBar(context, e.toString(), color: Colors.red);
    }
  }

  Future loginEmployee(String email, String password, BuildContext context) async{
    try {
      setIsLoading = true;
      if (email == "" || password == "") {
        throw("All fields are required!");
      }
      final AuthResponse response = await _supabaseClient.auth.signInWithPassword(email: email ,password: password);
      Utils.showSnackBar(context, "You Login Successfully!", color: Colors.green);
      //Navigator.pop(context);
      setIsLoading = false;
    } catch (e) {
      setIsLoading = false;
      Utils.showSnackBar(context, e.toString(), color: Colors.red);
    }
  }

  Future signOut() async{
    await _supabaseClient.auth.signOut();
    notifyListeners();
  }

  User? get currentUser => _supabaseClient.auth.currentUser; //Returns the user data, if there is a logged in user
}