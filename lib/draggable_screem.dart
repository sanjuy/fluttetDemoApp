import 'dart:ui' as ui;
import 'dart:io';
import 'package:dsdtabs/extensions/string_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_painter/image_painter.dart';
// import 'dutch_text_delegate.dart';

import 'package:open_file/open_file.dart';
// import 'dutch_text_delegate.dart';

// class PngHome extends StatefulWidget {
//   const PngHome({super.key});

//   @override
//   State<PngHome> createState() => _PngHomeState();
// }

// class _PngHomeState extends State<PngHome> {
//   GlobalKey globalKey = GlobalKey();

//   Future<void> _capturePng() async {
//     final RenderRepaintBoundary boundary = globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
//     final image = await boundary.toImage();
//     final ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
//     final Uint8List pngBytes = byteData!.buffer.asUint8List();
//     print(pngBytes);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return RepaintBoundary(
//       key: globalKey,
//       child: Center(
//         child: TextButton(
//           onPressed: _capturePng,
//           child: const Text('Hello World', textDirection: TextDirection.ltr),
//         ),
//       ),
//     );
//   }
// }

class ImagePainterExample extends StatefulWidget {
  @override
  _ImagePainterExampleState createState() => _ImagePainterExampleState();
}

class _ImagePainterExampleState extends State<ImagePainterExample> {
  final _imageKey = GlobalKey<ImagePainterState>();
  final _key = GlobalKey<ScaffoldState>();

  void saveImage() async {
    final image = await _imageKey.currentState?.exportImage();
    final directory = (await getApplicationDocumentsDirectory()).path;
    await Directory('$directory/sample').create(recursive: true);
    final fullPath =
        '$directory/sample/${DateTime.now().millisecondsSinceEpoch}.png';
    var imgFile = File(fullPath);
    imgFile.writeAsBytesSync(image!);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.grey[700],
        padding: const EdgeInsets.only(left: 10),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Image Exported successfully.",
                style: TextStyle(color: Colors.white)),
            TextButton(
              onPressed: () => OpenFile.open(fullPath),
              child: Text(
                "Open",
                style: TextStyle(
                  color: Colors.blue[200],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: const Text("Image Painter Example"),
        actions: [
          IconButton(
            icon: const Icon(Icons.save_alt),
            onPressed: saveImage,
          )
        ],
      ),
      body: ImagePainter.asset(
        "car13.jpg".carsdirectory(),
        key: _imageKey,
        scalable: true,
        initialStrokeWidth: 2,
        // textDelegate: DutchTextDelegate(),
        initialColor: Colors.green,
        initialPaintMode: PaintMode.line,
      ),
    );
  }
}





// class DraggableScree extends StatefulWidget {
//   const DraggableScree({Key? key}) : super(key: key);

//   @override
//   State<DraggableScree> createState() => _DraggableScreeState();
// }

// class _DraggableScreeState extends State<DraggableScree> {
//   GlobalKey globalKey = GlobalKey();
//   String? screenshotButtonText;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Draggable Items"),
//       ),
//       body: ImagePainter.asset(
//         "car10.jpg".carsdirectory(),
//         key: UniqueKey(),
//         scalable: true,
//         initialStrokeWidth: 2,
//         // textDelegate: DutchTextDelegate(),
//         initialColor: Colors.green,
//         initialPaintMode: PaintMode.line,
//       ),
//       /*Column(
//         children: [
//           repaint(),
//           SizedBox(
//             height: 50,
//             child: ElevatedButton(
//                 onPressed: () {
//                   _saveScreenshot();
//                 },
//                 child: const Text("capture screen")),
//           ),
//           Center(child: Text(screenshotButtonText ?? "")),
//         ],
//       ),
//       */
//     );
//   }

//   Future<void> _saveScreenshot() async {
//     setState(() {
//       screenshotButtonText = 'saving in progress...';
//     });
//     try {
//       //extract bytes
//       final RenderRepaintBoundary boundary = globalKey.currentContext
//           ?.findRenderObject()! as RenderRepaintBoundary;
//       final ui.Image image = await boundary.toImage(pixelRatio: 3.0);
//       final ByteData? byteData =
//           await image.toByteData(format: ui.ImageByteFormat.png);
//       final Uint8List pngBytes = byteData!.buffer.asUint8List();

//       //create file
//       final String dir = (await getApplicationDocumentsDirectory()).path;
//       final String fullPath = '$dir/${DateTime.now().millisecond}.png';
//       File capturedFile = File(fullPath);
//       await capturedFile.writeAsBytes(pngBytes);
//       print(capturedFile.path);
//       await GallerySaver.saveImage(capturedFile.path).then((value) {
//         setState(() {
//           screenshotButtonText = 'screenshot saved!';
//         });
//       });
//     } catch (e) {
//       print(e);
//     }
//   }

//   RepaintBoundary repaint() {
//     return RepaintBoundary(
//       key: globalKey,
//       child: Draggable(
//         feedback: const Material(
//           child: Text("djfnvkjsd"),
//         ),
//         child: Center(
//             child: SizedBox(
//                 width: 200,
//                 height: 200,
//                 child: Image.asset("car6.jpeg".carsdirectory()))),
//       ),
//     );
//   }

//   // Future<void> _capturePng() async {
//   //   final RenderRepaintBoundary boundary =
//   //       globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
//   //   var image = await boundary.toImage();
//   //   final ByteData? byteData =
//   //       await image.toByteData(format: ImageByteFormat.png);
//   //   final Uint8List pngBytes = byteData!.buffer.asUint8List();
//   //   print(pngBytes);

//   // }
// }
