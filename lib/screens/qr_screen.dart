import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';


class QrScreen extends StatefulWidget {
  const QrScreen({Key? key}) : super(key: key);

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {

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
            Expanded(child: Center(child: QrImage(
              data: "1234567890",
              version: QrVersions.auto,
              size: 200.0,
            ),)),
            ElevatedButton(onPressed: (){
              saveToGallery();
            }, child: Text('SAVE TO GALLERY',style: TextStyle(fontSize: 20.sp),))
          ],
        ),
      ),
    );
  }

  Future<String> createQrPicture() async {
    final qrValidationResult = QrValidator.validate(
      data: "1234567890",
      version: QrVersions.auto,
      errorCorrectionLevel: QrErrorCorrectLevel.L,
    );
    
    if (qrValidationResult.status == QrValidationStatus.valid) {
      final qrCode = qrValidationResult.qrCode;
      final painter = QrPainter.withQr(
        qr: qrCode!,
        color: const Color(0xFF000000),
        emptyColor: Colors.green,
        gapless: true,
        embeddedImageStyle: null,
        embeddedImage: null,
      );

      Directory tempDir = await getTemporaryDirectory();
      String tempPath = tempDir.path;
      final ts = DateTime.now().millisecondsSinceEpoch.toString();
      String path = '$tempPath/$ts.png';

      final picData = await painter.toImageData(2048, format: ImageByteFormat.png);
      await writeToFile(picData!, path);

      return path;
    }
    else{
      print(qrValidationResult.error);
      return '';
    }
  }
  saveToGallery() async {
    String path = await createQrPicture();

    final success = await GallerySaver.saveImage(path);

    final snackBar = new SnackBar(content:  success! ? Text('Image saved to Gallery') : Text('Error saving image'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<void> writeToFile(ByteData data, String path) async {
    final buffer = data.buffer;
    await File(path).writeAsBytes(
        buffer.asUint8List(data.offsetInBytes, data.lengthInBytes)
    );
  }
}


