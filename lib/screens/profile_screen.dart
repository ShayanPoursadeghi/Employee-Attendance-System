import 'package:employee_attendance_app/services/db_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  int selectValue = 0;

  @override
  Widget build(BuildContext context) {
    final dbService = Provider.of<DbService>(context);
    dbService.allDepartments.isEmpty ? dbService.getAllDepartments() : null;
    nameController.text.isEmpty
        ? nameController.text = dbService.userModel?.name ?? ''
        : null;

    return Scaffold(
        body: dbService.userModel == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [],
                ),
              ));
  }
}
