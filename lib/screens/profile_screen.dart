import 'package:emergency_access/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _familyMedicalController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _dieaseController = TextEditingController();
  TextEditingController _emergencyNumberController = TextEditingController();
  TextEditingController _emergencyContactController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: CustomColors.red,
          icon: const Icon(Icons.qr_code),
          onPressed: () {
            Navigator.of(context)
                .pushNamed('/Qr_screen');
          },
          label:  Text('Generate QR',style: TextStyle(fontSize: 18.sp),),
        ),
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Create Emergency Profile',
              style: TextStyle(color: Colors.white),
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50)))),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 50.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Flexible(
                        child: Text(
                          'Please Fill Below Form to Generate QR',
                          style: TextStyle(
                              fontSize: 25.sp, fontWeight: FontWeight.w500,color: CustomColors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shadowColor: CustomColors.blue,
                  elevation: 10,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(
                      color: CustomColors.red,
                      width: 1.0,
                    ),),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextField(
                          style: TextStyle(fontSize: 18.sp,color: CustomColors.red),
                          controller: _firstNameController,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                             /* suffixIcon: const Icon(
                                Icons.perm_identity,
                              ),*/
                              labelText: 'First Name',
                              /*labelStyle: TextStyle(fontSize: 14.sp)*/),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 18.sp,color: CustomColors.red),
                          controller: _lastNameController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                          /*  suffixIcon: Icon(
                              Icons.perm_identity,
                            ),*/
                            labelText: 'Last Name',
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 18.sp,color: CustomColors.red),
                          controller: _emergencyNumberController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                          /*  suffixIcon: Icon(
                              Icons.perm_identity,
                            ),*/
                            labelText: 'Emergency Contact Number',
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 18.sp,color: CustomColors.red),
                          controller: _emergencyContactController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                           /* suffixIcon: Icon(
                              Icons.perm_identity,
                            ),*/
                            labelText: 'Emergency Contact Name',
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 18.sp,color: CustomColors.red),
                          controller: _ageController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                           /* suffixIcon: Icon(
                              Icons.perm_identity,
                            ),*/
                            labelText: 'Age',
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 18.sp,color: CustomColors.red),
                          controller: _dieaseController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                           /* suffixIcon: Icon(
                              Icons.perm_identity,
                            ),*/
                            labelText: 'Disease (If Any)',
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextField(
                          style: TextStyle(fontSize: 18.sp,color: CustomColors.red),
                          controller: _familyMedicalController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                           /* suffixIcon: Icon(
                              Icons.perm_identity,
                            ),*/
                            labelText: 'Family Medical History (If Any)',
                          ),
                        ),

                      /*  SizedBox(
                          height: 20.h,
                        ),
                        TextField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(
                              Icons.perm_identity,
                            ),
                            hintText: 'Your Name',
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        )*/
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
