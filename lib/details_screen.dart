import 'package:dsdtabs/crop_image_screen.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:dsdtabs/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stick_it/stick_it.dart';
import 'package:image/image.dart' as IMG;
import 'package:imageview360/imageview360.dart';
import 'package:argon_buttons_flutter_fix/argon_buttons_flutter.dart';
import 'package:image_painter/image_painter.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedIndex = 0;
  final _imageKey = GlobalKey<ImagePainterState>();
  // final _imageKey = GlobalKey();

  List<String> carImage = [
    'car10.jpg'.carsdirectory(),
    'car11.jpg'.carsdirectory(),
    'car12.jpg'.carsdirectory(),
    'car13.jpg'.carsdirectory(),
  ];

  /// reference used for calling the exportImage function
  late StickIt _stickIt;
  List<Uint8List> editImage = [];

  @override
  void initState() {
    super.initState();
    // images.add("car6.jpeg");

    // images.add("car7.jpeg");
    // images.add("car8.jpeg");
    // images.add("car9.jpeg");
    // images.add("car10.jpg");
    // convertImage();
  }

  // void convertImage() async {
  //   for (String imgg in carImage) {
  //     var img =
  //         (await rootBundle.load(imgg.carsdirectory())).buffer.asUint8List();
  //     // carImage.insert(0, img);
  //     editImage2.add(img);
  //   }
  //   setState(() {});
  // }

// Initial Selected Value
  String? carClassType = 'MB S-Class';
  var carClassItems = [
    'MB S-Class',
    'MB C-Class',
    'MB A-CLASS',
    'MB E-CLASS',
    'MB GLS',
  ];

  String? carType = 'Sedan';
  var carTypeItems = [
    'Sedan',
    'SUV',
  ];
  TextEditingController controllerr = TextEditingController();
  // List<ImageProvider> imageList = <ImageProvider>[
  //   AssetImage('car10.jpg'.carsdirectory()),
  //   AssetImage('car11.jpg'.carsdirectory()),
  //   AssetImage('car12.jpg'.carsdirectory()),
  //   AssetImage('car13.jpg'.carsdirectory())
  // ];
  bool autoRotate = true;
  int rotationCount = 2;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  RotationDirection rotationDirection = RotationDirection.anticlockwise;
  Duration frameChangeDuration = const Duration(milliseconds: 50);
  bool imagePrecached = false;

  void getImageList(String type) {
    carImage = [];
    editImage = [];
    switch (type) {
      case "MB S-CLASS":
        carImage.add(('car10.jpg'.carsdirectory()));
        carImage.add(('car11.jpg'.carsdirectory()));
        carImage.add(('car12.jpg'.carsdirectory()));
        carImage.add(('car13.jpg'.carsdirectory()));
        break;
      case "MB A-CLASS":
        carImage.add(('car12.jpg'.carsdirectory()));
        carImage.add(('car13.jpg'.carsdirectory()));
        carImage.add(('car10.jpg'.carsdirectory()));
        carImage.add(('car11.jpg'.carsdirectory()));
        break;
      default:
        carImage.add(('car10.jpg'.carsdirectory()));
        carImage.add(('car11.jpg'.carsdirectory()));
        carImage.add(('car12.jpg'.carsdirectory()));
        carImage.add(('car13.jpg'.carsdirectory()));
    }
  }

  StickIt buildView360Sticker(String imag) {
    
    _stickIt = StickIt(
      panelStickerCrossAxisCount: 12,
      stickerList: [
        Image.asset('scratch.png'.directory(),
            height: 30, width: 30, fit: BoxFit.cover),
        Image.asset('hammer.png'.directory()),
        Image.asset('cross.png'.directory()),
        Image.asset('close.png'.directory()),
        Image.asset('close.png'.directory()),
      ],
      key: UniqueKey(),
      panelHeight: 100,
      stickerSize: 50,
      // child: ImagePainter.asset(
      //   imag,
      //   controlsAtTop: false,
      //   key: _imageKey,
      //   // key: UniqueKey(),
      //   scalable: false,
      //   initialStrokeWidth: 2,
      //   // undoIcon: const Icon(Icons.undo),
      //   // textDelegate: DutchTextDelegate(),
      //   initialColor: Colors.red,
      //   initialPaintMode: PaintMode.freeStyle,
      // ),
      child: NextImage(imag: imag),
      /*
      SingleChildScrollView(
        child: ImageView360(
          rotationDirection: rotationDirection,
          frameChangeDuration: frameChangeDuration,
          allowSwipeToRotate: allowSwipeToRotate,
          key: UniqueKey(),
          imageList: imageList,
        ), 
      ),
      */
      // )
      /*
      editImage.isEmpty
          ? Image.asset(
              images[selectedIndex].carsdirectory(),
              fit: BoxFit.contain,
            )
          : Image.memory(
              editImage[selectedIndex],
              fit: BoxFit.contain,
            ),
            */
    );
    return _stickIt;
  }

  @override
  Widget build(BuildContext context) {
    // convertImage();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Car Details"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: Stack(
                children: [
                  // StickitI(selectedIndex: selectedIndex),
                  buildView360Sticker(carImage[selectedIndex]),
                  Positioned(
                      top: (MediaQuery.of(context).orientation ==
                              Orientation.portrait)
                          ? 400
                          : 200,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            previousAction(),
                            const Spacer(),
                            nextAction(),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          // const SizedBox(height: 10),
          Container(
            color: Colors.black,
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: editImage.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Stack(
                    children: [
                      Image.memory(
                        key: UniqueKey(),
                        editImage[index],
                        fit: BoxFit.cover,
                      ),
                      FloatingActionButton(
                        heroTag: "$index",
                        onPressed: () {
                          setState(() {
                            if (editImage.isNotEmpty) {
                              editImage.removeAt(index);
                            }
                          });
                        },
                        backgroundColor: Colors.black26,
                        child: const Icon(Icons.delete),
                      )
                    ],
                  ),
                  onTap: () {
                    final imageProvider = Image.memory(editImage[index]).image;
                    showImageViewer(context, imageProvider,
                        swipeDismissible: true,
                        doubleTapZoomable: true,
                        onViewerDismissed: () {});
                  },
                );
              },
            ),
          ),
          // const SizedBox(height: 50),
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                dropDownList(1, carClassType ?? "", carClassItems),
                const SizedBox(width: 50),
                dropDownList(2, carType ?? "", carTypeItems),
                const Spacer(),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 26, 88, 139),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: ArgonButton(
                    height: 50,
                    width: 150,
                    minWidth: MediaQuery.of(context).size.width * 0.15,
                    onTap: (startLoading, stopLoading, btnState) async {
                      if (btnState == ButtonState.Idle) {
                        startLoading();
                        //_imageKey.currentState?.exportImage();
                        final image = await _stickIt.exportImage();
                        // var crop = await getCropImage(image);
                        navigator(image, () {
                          setState(() {
                            stopLoading();
                          });
                        });
                      }
                    },
                    loader: const Text(
                      "Please Wait...",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    borderRadius: 5.0,
                    color: const Color.fromARGB(255, 77, 63, 182),
                    child: const Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 10),
        ],
      ),
    );
  }

// next button action
  Container nextAction() {
    return Container(
      alignment: Alignment.centerRight,
      child: selectedIndex < 3
          ? TextButton.icon(
              onPressed: () {
                selectedIndex += 1;
                setState(() {});
              },
              icon: const Icon(
                Icons.skip_next,
                color: Colors.white,
                size: 50,
              ),
              label: const Text(""))
          : null,
    );
  }

// previous  button action
  Container previousAction() {
    return Container(
      alignment: Alignment.centerLeft,
      child: selectedIndex != 0
          ? TextButton.icon(
              onPressed: () {
                selectedIndex -= 1;
                setState(() {});
              },
              icon: const Icon(
                Icons.skip_previous,
                color: Colors.white,
                size: 50,
              ),
              label: const Text(""))
          : null,
    );
  }

  Container dropDownList(int type, String value, List<String> items) {
    return Container(
      color: Colors.black,
      height: 60,
      child: SizedBox(
        width: 200,
        child: DropdownButton(
          isExpanded: true,
          value: value,
          icon: const Icon(Icons.keyboard_arrow_down),
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Roboto",
            fontSize: 25,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
          underline: Container(
            height: 2,
            color: Colors.white,
          ),
          dropdownColor: Colors.black,
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              if (type == 1) {
                carClassType = newValue;
                getImageList(newValue ?? "");
              } else {
                carType = newValue;
              }
            });
          },
        ),
      ),
    );
  }

  Uint8List resizeImage(Uint8List data) {
    Uint8List resizedData = data;
    IMG.Image img = IMG.decodeImage(data)!;
    IMG.Image resized = IMG.copyResize(img, height: img.height - 50);
    resizedData = IMG.encodeJpg(resized);
    return resizedData;
  }

  navigator(Uint8List image, VoidCallback callBack) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
            return CropSample(
              img: image,
              onCropDone: (p0) {
                editImage.add((p0));
                callBack();
              },
            );
          },
          fullscreenDialog: true),
    );
  }
}





class NextImage extends StatefulWidget {
  const NextImage({super.key, required this.imag});
  final String imag;

  @override
  State<NextImage> createState() => _NextImageState();
}

class _NextImageState extends State<NextImage> {
  @override
  Widget build(BuildContext context) {
    return ImagePainter.asset(
      widget.imag,
      controlsAtTop: false,
      key: UniqueKey(),
      scalable: true,
      initialStrokeWidth: 2,
      // textDelegate: DutchTextDelegate(),
      initialColor: Colors.green,
      initialPaintMode: PaintMode.freeStyle,
    );
  }
}
