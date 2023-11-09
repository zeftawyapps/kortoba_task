import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../../consts/views/assets.dart';
import '../../consts/views/colors.dart';



class AddImage extends StatefulWidget {
  AddImage({Key? key ,  required this.place }) : super(key: key);
  String place ;
  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  bool imgshwo = false;
  bool imgget = false;

  AddImageProviderModule addimagep = AddImageProviderModule();

  @override
  Widget build(BuildContext context) {
    addimagep = context.watch<AddImageProviderModule>();
    imgget = addimagep.imgget;

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              imgshwo = !imgshwo;
            });
          },
          child: Stack(
            children: [
              Center(
                child: Container(
                    width: 95.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: addimagep.webimage != ""
                        ? Image(
                      image: NetworkImage(addimagep.webimage),
                    )
                        : Container(
                      child: addimagep.imgget
                          ? Image(
                        image: FileImage(addimagep.fileImage!),
                      )
                          :  Image(
                        image: AssetImage( widget.place),),
                    )),
              ),
              Positioned.fill(
                right: -65.w,
                bottom: -30.h,
                child:  Icon(
                  Icons.add_a_photo,
                  size: 30.sp,
                  color: DasgbordColors.primaryColors,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
            child: imgshwo
                ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    addimagep.setgetimage(false);
                    addimagep.getImage(ImageSource.camera);
                    imgshwo = false;
                  },
                  child: Icon(
                    Icons.add_a_photo,
                    size: 30.sp,
                    color: DasgbordColors.primaryColors,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    addimagep.setgetimage(false);
                    addimagep.getImage(ImageSource.gallery);
                    imgshwo = false;
                  },
                  child: Icon(
                    Icons.add_photo_alternate_sharp,
                    size: 30.sp,
                    color: DasgbordColors.primaryColors,
                  ),
                )
              ],
            )
                : Container()),
      ],
    );
  }
}



class AddImageAvatar extends StatefulWidget {
  AddImageAvatar({Key? key , required this.imagePlaceHOlder}) : super(key: key);
  final String imagePlaceHOlder ;
  @override
  _AddImageavatarState createState() => _AddImageavatarState();
}

class _AddImageavatarState extends State<AddImageAvatar> {
  bool imgshwo = false;
  bool imgget = false;

  AddImageProviderModule addimagep = AddImageProviderModule();

  @override
  Widget build(BuildContext context) {
    addimagep = context.watch<AddImageProviderModule>();
    imgget = addimagep.imgget;

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              imgshwo = !imgshwo;
            });
          },
          child: Stack(
            children: [
              Center(
                child: Container(
                    width: 95.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: addimagep.webimage != ""
                        ? CircleAvatar(
                      backgroundImage: NetworkImage(addimagep.webimage),
                    )
                        : Container(
                      child: addimagep.imgget
                          ? CircleAvatar(
                        backgroundImage: FileImage(addimagep.fileImage!),
                      )
                          : const CircleAvatar(
                        backgroundImage:  AssetImage(AppAsset.profile) ,
                        backgroundColor: Colors.blue,
                      ),
                    )),
              ),
              Positioned.fill(
                right: -65.w,
                bottom: -30.h,
                child:  Icon(
                  Icons.add_a_photo,
                  size: 30.sp,
                  color: DasgbordColors.primaryColors,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
            child: imgshwo
                ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    addimagep.setgetimage(false);
                    addimagep.getImage(ImageSource.camera);
                    imgshwo = false;
                  },
                  child: Icon(
                    Icons.add_a_photo,
                    size: 30.sp,
                    color: DasgbordColors.primaryColors,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    addimagep.setgetimage(false);
                    addimagep.getImage(ImageSource.gallery);
                    imgshwo = false;
                  },
                  child: Icon(
                    Icons.add_photo_alternate_sharp,
                    size: 30.sp,
                    color: DasgbordColors.primaryColors,
                  ),
                )
              ],
            )
                : Container()),
      ],
    );
  }
}

class AddImageProviderModule extends ChangeNotifier {
  bool imgshwo = false;
  bool imgget = false;
  String webimage = "";
  File? fileImage;
  final picker = ImagePicker();
  void setFileNull (){
    fileImage == null ;
    notifyListeners() ;
  }
  // late final pickedFile;
  Future getImage(ImageSource imgs) async {
    // pickedFile =
    await picker.getImage(source: imgs).then((value) {
      if (value != null) {
        String p = value.path;
        fileImage = File(p);
        // ignore: unnecessary_null_comparison
        if (fileImage == null) {
          imgget = false;
        } else {
          imgget = true;
          webimage = '';
          notifyListeners();
        }
      } else {
        fileImage = null;
        print('No image selected.');
      }
    });

    imgshwo = false;
    notifyListeners();
  }

  void setgetimage(bool getimag) {
    imgget = getimag;

    notifyListeners();
  }

  void setwebimage(String url) {
    webimage = url;
  }
}
