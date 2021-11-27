import 'dart:io';
import 'package:image_picker/image_picker.dart';


final imagePicker = ImagePicker();
File imageFile;
String imageData;

getImage() async {


  final image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imageFile = File(image.path);
    }
}