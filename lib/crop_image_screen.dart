import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:dsdtabs/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class CropSample extends StatefulWidget {
  const CropSample({super.key, required this.img, this.onCropDone});
  final Uint8List img;
  final Function(Uint8List)? onCropDone;
  @override
  State<CropSample> createState() => _CropSampleState();
}

class _CropSampleState extends State<CropSample> {
  // static final _images = ['car12.jpg'.carsdirectory()];

  final _cropController = CropController();
  final _imageDataList = <Uint8List>[];

  var _loadingImage = false;
  var _currentImage = 0;

  set currentImage(int value) {
    setState(() {
      _currentImage = value;
    });
    _cropController.image = _imageDataList[_currentImage];
  }

  var _isCropping = false;
  Uint8List? _croppedData;

  @override
  void initState() {
    _loadAllImages();
    super.initState();
  }

  Future<void> _loadAllImages() async {
    setState(() {
      _loadingImage = true;
    });
    _imageDataList.add(widget.img);

    setState(() {
      _loadingImage = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Visibility(
            replacement: const CircularProgressIndicator(),
            visible: !_loadingImage && !_isCropping,
            child: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      color: Colors.black,
                      height: 80,
                    )),
                Expanded(
                  child: Visibility(
                    visible: _croppedData == null,
                    child: Stack(
                      children: [
                        if (_imageDataList.isNotEmpty) ...[
                          Crop(
                            controller: _cropController,
                            image: _imageDataList[_currentImage],
                            onCropped: (croppedData) {
                              setState(() {
                                _croppedData = croppedData;
                                _isCropping = false;
                                widget.onCropDone!(croppedData);
                                Navigator.pop(context);
                              });
                            },
                            initialSize: 1.0,
                            maskColor: Colors.black,
                            cornerDotBuilder: (size, edgeAlignment) =>
                                const SizedBox.shrink(),
                            interactive: true,
                            fixArea: false,
                            initialAreaBuilder: (rect) {
                              return Rect.fromLTRB(
                                rect.left + 20,
                                rect.top + 80,
                                rect.right - 20,
                                rect.bottom - 200,
                              );
                            },
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isCropping = true;
                            });
                            _cropController.crop();
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: Text('Done'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
