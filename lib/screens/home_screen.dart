import 'package:emergency_access/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Welcome to Emergency Access',
            style: TextStyle(color: Colors.white),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),

                  bottomLeft: Radius.circular(50)))),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.h,),

            Expanded(
              child: Image.asset(
                'assets/images/logo_with_name.png',
                height: 100.h,
              ),
            ),
            SizedBox(height: 40.h,),
            GestureDetector(
              onTap: (){
                Navigator.of(context)
                    .pushNamed('/profile_screen');
              },
              child: SizedBox(
                width: double.infinity,
                child:  Card(
                  elevation: 10,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(
                        color: CustomColors.red,
                        width: 2.0,
                      ),),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(Icons.person_outline,size: 30.h,color: CustomColors.red,),
                        SizedBox(width: 10.w,),
                        Flexible(child: Text('Create Emergency Profile',style: TextStyle(fontSize: 18.sp,color: CustomColors.red),)),
                      ],
                    ),
                  )
                ),
              ),
            ),
            SizedBox(height: 40.h,),
            GestureDetector(
              onTap: (){
                Navigator.of(context)
                    .pushNamed('/Qr_screen');
              },
              child: SizedBox(
                width: double.infinity,
                child:  Card(
                    elevation: 10,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(
                        color: CustomColors.red,
                        width: 2.0,
                      ),),
                    child:
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(Icons.qr_code,size: 30.h,color: CustomColors.red,),
                          SizedBox(width: 10.w,),
                          Flexible(child: Text('View Emergency QR Code',style: TextStyle(fontSize: 18.sp, color: CustomColors.red),)),
                        ],
                      ),
                    )
                ),
              ),
            ),
            SizedBox(height: 40.h,),

          ],
        ),
      ),
    );
  }
}
