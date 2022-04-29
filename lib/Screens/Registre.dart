// ignore_for_file: prefer_const_constructors

import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:frontend/Screens/homepage.dart';
import 'package:frontend/constants/constants.dart';
import 'package:frontend/constants/theme_helper.dart';
import 'package:frontend/services/api.dart';
import 'package:image_picker/image_picker.dart';
/*local*/
import '../widgets/PosteOccupe.dart';
import '../widgets/uploadimage.dart';
import '../widgets/calendar.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage> {
  AuthController authController = AuthController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController postController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  late Uint8List imagevalue = Uint8List(0);
  late String image = "";

  DateTime? birthday;
  List<String> posts = [];
  bool checkedValue = false;
  bool checkboxValue = false;
  Future init() async {
    setState(() {
      this.birthday = birthday;
      this.posts = posts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KPrimaryColor,
        elevation: 0,
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: KPrimaryColor,
      body: Container(
        margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        alignment: Alignment.center,
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  //uploadimage
                  imagevalue.length == 0
                      ? Container(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              GestureDetector(
                                child: Icon(
                                  Icons.person_add,
                                  color: Colors.black12,
                                  size: 60.0,
                                ),
                                onTap: () => uploadImage(),
                              ),
                            ],
                          ),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(
                            image: MemoryImage(imagevalue),
                            width: 100,
                            height: 100,
                          ),
                        ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: PostsButtonsWidget(
                      posts: posts,
                      onSelectedPosts: (post) => (setState(
                        () => posts.contains(post)
                            ? posts.remove(post)
                            : posts = [post],
                      )),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    child: TextFormField(
                      controller: nameController,
                      decoration: ThemeHelper()
                          .textInputDecoration('Name', 'Enter your first name'),
                    ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    child: TextFormField(
                      controller: emailController,
                      decoration: ThemeHelper().textInputDecoration(
                          "E-mail address", "Enter your email"),
                      keyboardType: TextInputType.emailAddress,
                      validator: (val) {
                        if (!(val!.isEmpty) &&
                            !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                .hasMatch(val)) {
                          return "Enter a valid email address";
                        }
                        return null;
                      },
                    ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    child: TextFormField(
                      controller: phoneController,
                      decoration: ThemeHelper().textInputDecoration(
                          "Mobile Number", "Enter your mobile number"),
                      keyboardType: TextInputType.phone,
                      validator: (val) {
                        if (!(val!.isEmpty) &&
                            !RegExp(r"^(\d+)*$").hasMatch(val)) {
                          return "Enter a valid phone number";
                        }
                        return null;
                      },
                    ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: ThemeHelper().textInputDecoration(
                          "Password*", "Enter your password"),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter your password";
                        }
                        return null;
                      },
                    ),
                    decoration: ThemeHelper().inputBoxDecorationShaddow(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: BirthdayWidget(
                        birthday: birthday,
                        onChangedBirthday: (birthday) => setState(() {
                              this.birthday = birthday;
                            })),
                  ),
                  SizedBox(height: 15.0),
                  FormField<bool>(
                    builder: (state) {
                      return Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Checkbox(
                                  value: checkboxValue,
                                  onChanged: (value) {
                                    setState(() {
                                      checkboxValue = value!;
                                      state.didChange(value);
                                    });
                                  }),
                              Text(
                                "I accept all terms and conditions.",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              state.errorText ?? '',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Theme.of(context).errorColor,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    validator: (value) {
                      if (!checkboxValue) {
                        return 'You need to accept terms and conditions';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    decoration: ThemeHelper().buttonBoxDecoration(context),
                    child: ElevatedButton(
                      style: ThemeHelper().buttonStyle(),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Text(
                          "Register".toUpperCase(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          authController.Signin(
                              nameController.text.trim(),
                              emailController.text.trim(),
                              passwordController.text.trim(),
                              phoneController.text.trim(),
                              posts[0],
                              birthday!,
                              image);
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                              (Route<dynamic> route) => false);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  uploadImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'svg', 'jpeg']);

    if (result != null) {
      PlatformFile file = result.files.first;

      setState(() {
        imagevalue = file.bytes!;
        image = file.bytes!.toString();
      });
    } else {
      // User canceled the picker
    }
  }
}
