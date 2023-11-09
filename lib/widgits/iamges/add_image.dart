import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../../consts/views/colors.dart';

class AddImageBloc extends StatefulWidget {
  AddImageBloc({Key? key,required  this.addimagep , required this.place  , this.fileNom =0
  , this.hight = 100 , this.width = 100 , this.shape = BoxShape.circle
  }) : super(key: key);
  AddImageBlocModule? addimagep;
  String place ;
  int fileNom = 0 ;
  int hight ;
  int width ;
  BoxShape shape = BoxShape.circle;
  @override
  _AddImageBlocState createState() => _AddImageBlocState();
}

class _AddImageBlocState extends State<AddImageBloc> {
  bool imgshwo = false;
  bool imgget = false;
  late AddImageBlocModule addimagep;

  @override
  void initState() {
    if (widget.addimagep == null) {
      addimagep = AddImageBlocModule();
    } else {
      addimagep = widget.addimagep!;
    }
  }

  @override
  Widget build(BuildContext context) {
    imgget = addimagep.imgget;

    return BlocConsumer(
        bloc: addimagep,
        listenWhen: (c, p) => c != p,
        listener: (context, state) {
          if (state == FileLoaded) {
            ImageFileLoading.imagFile = addimagep.fileImage;
          }
        },
        builder: (context, state) {
          ImageFileLoading.imagFile = addimagep.fileImage;

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
                          width: widget.width.w,
                          height:  widget.hight.h,

                          decoration: BoxDecoration(
                            shape: widget.shape,
                            border: Border.all(color: Colors.white, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ),
                          child: addimagep.webimage != ""
                              ? Image(
                            image: NetworkImage(addimagep.webimage),
                          )
                              : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                            child: addimagep.imgget
                                  ? Image(
                                image:
                                FileImage(addimagep.fileImage!),
                            )
                                  :  Image(
                                image: AssetImage(widget.place ),
                            ),
                          ),
                              )),
                    ),
                    Positioned.fill(
                      right: -65.w,
                      bottom: -30.h,
                      child: Icon(
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
                  ).animate().scaleY(
                    begin: 0,
                    end: 1,
                    duration: Duration(milliseconds:100 ),
                  )

                      : Container()),
            ],
          );
        });
  }
}

class ImageState {}

class FileLoaded extends ImageState {}

class NoFileLoaded extends ImageState {}

class FileChooseing extends ImageState {}

class AddImageBlocModule extends Cubit<ImageState> {
  bool imgshwo = false;
  bool imgget = false;
  String webimage = "";
  File? fileImage;
  final picker = ImagePicker();

  AddImageBlocModule() : super(ImageState());

  // late final pickedFile;
  Future getImage(ImageSource imgs) async {
    emit(FileChooseing());

    // pickedFile =
    await picker.getImage(source: imgs).then((value) {
      if (value != null) {
        String p = value.path;
        fileImage = File(p);
        // ignore: unnecessary_null_comparison
        if (fileImage == null) {
          imgget = false;
          emit(NoFileLoaded());
        } else {
          imgget = true;
          webimage = '';
          emit(FileLoaded());
        }
      } else {
        fileImage = null;
        print('No image selected.');
      }
    });

    imgshwo = false;
  }

  void setgetimage(bool getimag) {
    imgget = getimag;
  }

  void setwebimage(String? url) {
    webimage = url??"";
  }
}

class ImageFileLoading {
  static   File? imagFile;
  static  List<File> imagFiles = [];
}
