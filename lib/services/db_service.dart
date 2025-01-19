import 'dart:math';
import 'package:employee_attendance_app/constants/constants.dart';
import 'package:employee_attendance_app/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DbService extends ChangeNotifier {
  final SupabaseClient _supabaseClient = Supabase.instance.client;
  UserModel? userModel;

  String generatedRandomEmployeeId() {
    final random = Random();
    const allchars = "abcdefABCDEF0123456789";
    final randomString =
        List.generate(8, (index) => allchars[random.nextInt(allchars.length)])
            .join();
    return randomString;
  }

  Future insertNewUser(String email, var id) async {
    await _supabaseClient.from(Constants.employeeTable).insert({
      'id': id,
      'name': '',
      'email': email,
      'employee_id': generatedRandomEmployeeId(),
      'department': null,
    });
  }

  Future<UserModel> getUserData() async {
    final userData = await _supabaseClient
        .from(Constants.employeeTable)
        .select()
        .eq('id', _supabaseClient.auth.currentUser!.id)
        .single();
        userModel = UserModel.fromJson(userData);
        return userModel!;
  }
}
