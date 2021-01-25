import 'dart:io';

import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:e_wallet/widgets/reuseable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: appBar(context, 'Profile'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset(
            pathIcon,
            color: Colors.black,
            height: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                profileImage(context),
                SizedBox(
                  height: 30,
                ),
                ReuseableTextfield(
                  lable: 'User Name',
                ),
                SizedBox(
                  height: 10,
                ),
                ReuseableTextfield(
                  lable: 'Email Address',
                ),
                SizedBox(
                  height: 10,
                ),
                ReuseableTextfield(
                  lable: 'Mobile Number',
                ),
              ],
            ),
            GestureDetector(
              onTap: ()=> Navigator.of(context).pop(),
              child: redButton(context, 'Save'),
            )
          ],
        ),
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  Widget profileImage(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: _imageFile == null
              ? AssetImage('assets/images/Messi.png')
              : FileImage(File(_imageFile.path)),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 0,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                color: Color(0xffC52929),
              ),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: ((builder) =>
                          BottomSheet(context, 'Camera', 'Gallery')));
                },
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
            )),
      ],
    );
  }

// ignore: non_constant_identifier_names
  Widget BottomSheet(BuildContext context, String lable1, String lable2) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Text('Choose your Profile Image'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                icon: Icon(Icons.camera_alt),
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                label: Text(lable1),
              ),
              SizedBox(
                width: 20,
              ),
              FlatButton.icon(
                icon: Icon(Icons.image),
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                label: Text(lable2),
              )
            ],
          )
        ],
      ),
    );
  }
}
