import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'View Emergency QR Code',
            style: TextStyle(color: Colors.white),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)))),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(child: Center(child: Icon(Icons.qr_code_2_rounded, size: 300.h,))),
            ElevatedButton(onPressed: (){}, child: Text('SAVE TO GALLERY',style: TextStyle(fontSize: 20.sp),))
          ],
        ),
      ),
    );
  }
}
