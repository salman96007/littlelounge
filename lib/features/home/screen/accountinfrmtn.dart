import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:littlelounge/constant/colorconstant.dart';
import 'package:littlelounge/constant/imageconstant.dart';
import 'package:littlelounge/main.dart';
String? currentUserImage;
class AccountInfrmtn extends  ConsumerStatefulWidget {
  const AccountInfrmtn({super.key});

  @override
  ConsumerState<AccountInfrmtn> createState() => _AccountInfrmtnState();
}

class _AccountInfrmtnState extends ConsumerState<AccountInfrmtn> {
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController numberController=TextEditingController();
  var file;
  pickFile(ImageSource) async {
    final imageFile=await ImagePicker.platform.pickImage(source: ImageSource);
    file=File(imageFile!.path);
    if(mounted){
      setState(() {
        file=File(imageFile.path);
      });
    }
    uploadImage();
  }
  String imageUrl ="";

  uploadImage() async {
    var uploadPick = await FirebaseStorage.instance.ref("newUsers")
        .child("path ${DateTime.now()}").putFile(file,SettableMetadata(
        contentType: "image/jpeg"
    ));
    var getUrl = await uploadPick.ref.getDownloadURL();
    imageUrl =getUrl;
    setState(() {

    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text("Account Information",style: TextStyle(color: ColorConst.secondary,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: height*0.3,
                      width: width*1,
                      margin: EdgeInsets.only(bottom: width*0.11),
                      decoration: BoxDecoration(
                          color: ColorConst.seventh,
                          borderRadius: BorderRadius.circular(width*0.1)
                      ),
                    ),
                    file!=null? CircleAvatar(
                      radius: width*0.2,
                      backgroundImage: FileImage(file),
                    ):
                    CircleAvatar(
                      radius: width*0.2,
                      backgroundImage:AssetImage(ImageConstant.kid1),
                    ),
                    Positioned(
                      left: 210,
                      child: CircleAvatar(
                        radius: width*0.05,
                        child: InkWell(
                          onTap: () {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                alignment: Alignment.center,
                                title: Text("Choose From",style: TextStyle(color: ColorConst.secondary),
                                textAlign: TextAlign.center,),
                                backgroundColor: ColorConst.primaryColor,
                                content: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        pickFile(ImageSource.camera);
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: height*0.045,
                                        width: width*0.15,
                                        decoration: BoxDecoration(
                                          color: ColorConst.seventh,
                                          borderRadius: BorderRadius.circular(width*0.03)
                                        ),
                                        child: Icon(Icons.camera,color: ColorConst.primaryColor,),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        pickFile(ImageSource.gallery);
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: height*0.045,
                                        width: width*0.15,
                                        decoration: BoxDecoration(
                                            color: ColorConst.seventh,
                                            borderRadius: BorderRadius.circular(width*0.03)
                                        ),
                                        child: Icon(Icons.photo,color: ColorConst.primaryColor,),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },);
                          },
                            child: SvgPicture.asset(SvgConstant.edit)),
                      ),
                    ),
        
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.go,
                  style: TextStyle(fontSize: width*0.05),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Name",
                    labelStyle: TextStyle(fontSize: width*0.05,color: ColorConst.secondary),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.08),
                      borderSide: BorderSide(color: ColorConst.seventh)
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.08),
                      borderSide: BorderSide(color: ColorConst.seventh),
                    ),
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.go,
                  style: TextStyle(fontSize: width*0.05),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: width*0.05,color: ColorConst.secondary),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.08),
                      borderSide: BorderSide(color: ColorConst.seventh)
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.08),
                      borderSide: BorderSide(color: ColorConst.seventh),
                    ),
                  ),
                ),
                TextFormField(
                  controller: numberController,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.go,
                  style: TextStyle(fontSize: width*0.05),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: "Mobile Number",
                    labelStyle: TextStyle(fontSize: width*0.05,color: ColorConst.secondary),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.08),
                      borderSide: BorderSide(color: ColorConst.seventh)
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.08),
                      borderSide: BorderSide(color: ColorConst.seventh),
                    ),
                  ),
                ),
        
              ],
            ),
            SizedBox(height: height*0.04,),
            Column(
              children: [
                Container(
                  width: width*0.25,
                  height: height*0.05,

                  child: Center(child: Text("Update",style: TextStyle(color: ColorConst.primaryColor,fontSize: width*0.04,fontWeight: FontWeight.w600),)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width*0.03),
                    color: ColorConst.seventh,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
