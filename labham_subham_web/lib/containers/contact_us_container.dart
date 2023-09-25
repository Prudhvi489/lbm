import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:labham_subham_web/utils/text_sizes.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:show_up_animation/show_up_animation.dart';
import '../utils/app_colors.dart';
import '../utils/font_family.dart';
import '../utils/logo.dart';
import '../validations.dart';
import '../widgets/app_bar.dart';
import '../widgets/awesome_dialog.dart';
import '../widgets/drawer.dart';
import '../widgets/footer.dart';
import 'package:http/http.dart' as http;

class ContactUsContainer extends StatefulWidget {
  const ContactUsContainer({Key? key}) : super(key: key);

  @override
  State<ContactUsContainer> createState() => _ContactUsContainerState();
}

class _ContactUsContainerState extends State<ContactUsContainer> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController purposeOfPoojaController =
      TextEditingController();

  final TextEditingController addressController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();

  bool isSubmitted = false;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (cxt, sizingInformation) {
      return sizingInformation.deviceScreenType == DeviceScreenType.desktop
          ? desktopContactUsContiner(
              sizingInformation,
              context,
              nameController,
              purposeOfPoojaController,
              addressController,
              phoneNumberController)
          : mobileContactUsContiner(
              sizingInformation,
              context,
              nameController,
              purposeOfPoojaController,
              addressController,
              phoneNumberController);
    });
  }

  Future sendEmail(
      {required String name,
      required String email,
      required String subject,
      required String message,
      context,
      dialogueWidth}) async {
    /// Checking weather the button is pressed or not
    setState(() {
      isSubmitted = true;
    });


    const serviceId = 'service_rkmodj6';
    const templateId = 'template_ecknrco';
    const userId = '5DyYo9RJ7UyDIMr8K';
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final responce = await http.post(
      url,
      headers: {"Content-Type": 'application/json'},
      body: json.encode(
        {
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': name,
            "user_email": email,
            'user_subject': subject,
            'user_message': message,
          }
        },
      ),
    );

    print({responce.statusCode == 200});

    if (responce.statusCode == 200) {
      nameController.clear();
      purposeOfPoojaController.clear();
      addressController.clear();
      phoneNumberController.clear();
      setState(() {
        isSubmitted = false;
      });

      awesomeDialog(
          context,
          "Message successfully delivered to the Labham Subham team. They will contact us shortly.",
          dialogueWidth);
    } else {
      nameController.clear();
      purposeOfPoojaController.clear();
      addressController.clear();
      phoneNumberController.clear();
      awesomeDialog(
          context,
          "Message could not be sent Please try again, or contact Labham Subham at 9949155666.",
          dialogueWidth);
      print("Failed to sent");
    }

    print(responce.body);
    print(responce);
    print(subject);
    print(message);
  }

  Widget mobileContactUsContiner(sizingInformation, context, nameController,
      purposeOfPoojaController, addressController, phoneNumberController) {
    return Scaffold(
      appBar: mobileAppBar(),
      drawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 0),
              child: Text(
                'Contact Us',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: heading,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 0),
                  animationDuration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOutCubicEmphasized,
                  direction: Direction.horizontal,
                  offset: 0.9,
                  child: SizedBox(
                    // color: Colors.yellow,
                    height: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('assets/images/landline.png'),
                    ),
                  ),
                ),
                ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 500),
                    animationDuration: const Duration(milliseconds: 1500),
                    curve: Curves.easeInOutCubicEmphasized,
                    direction: Direction.horizontal,
                    offset: -0.9,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        // color: Colors.red,
                        height: 400,
                        width: 500,
                        child: Column(children: [
                          customTextFormField('Name', nameController),
                          const SizedBox(
                            height: 10,
                          ),
                          customTextFormField(
                              'purpose of pooja', purposeOfPoojaController),
                          const SizedBox(
                            height: 10,
                          ),
                          customTextFormField('address', addressController),
                          const SizedBox(
                            height: 10,
                          ),
                          customTextFormField(
                              'phone number', phoneNumberController),
                          const SizedBox(
                            height: 20,
                          ),
                          isSubmitted  ?   const CircularProgressIndicator(color: footerColor,): ElevatedButton(
                            onPressed: () {
                              print(
                                  "${nameController.text} .................[GREEN]");
                              print(
                                  "${purposeOfPoojaController.text} .................[GREEN]");
                              print(
                                  "${addressController.text} .................[GREEN]");
                              print(
                                  "${phoneNumberController.text} .................[GREEN]");
                              if (Validations().isUserNameValid(
                                  nameController.text.trim(), context) &&
                                  Validations().isPurposeOfPoojaIsValid(
                                      purposeOfPoojaController.text.trim(),
                                      context) &&
                                  Validations().isAddressValid(
                                      addressController.text.trim(), context) &&
                                  Validations().isMobileNumberValid(
                                      phoneNumberController.text.trim(),
                                      context)) {
                                sendEmail(
                                    email: addressController.text,
                                    message: purposeOfPoojaController.text,
                                    name: nameController.text,
                                    subject: phoneNumberController.text,
                                    context: context,
                                    dialogueWidth: 500);
                              }
                            },
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(footerColor),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  side: const BorderSide(color: footerColor),
                                  borderRadius: BorderRadius.circular(5),
                                ))),
                            child: const Text(
                              'Submit',
                              style: TextStyle(fontFamily: fontFamily),
                            ),
                          )
                        ]),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Footer(
              sizingInformation: sizingInformation,
            ),
          ],
        ),
      ),
    );
  }

  Widget desktopContactUsContiner(
      sizingInformation,
      BuildContext context,
      nameController,
      purposeOfPoojaController,
      addressController,
      phoneNumberController) {
    return Scaffold(
      appBar: deskTopAppBar(context, sizingInformation, 4),
      body: Container(
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        color:footerColor,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color:Colors.white,
                height: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 50),
                      child: Text(
                        'Contact Us',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: heading,
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          // color: Colors.yellow,
                          height: 300,
                          // child:  Lottie.asset("assets/json/Contact Us.json")
                          child: Image.asset('assets/images/landline.png'),
                        ),
                        ShowUpAnimation(
                            delayStart: const Duration(seconds: 0),
                            animationDuration: const Duration(milliseconds: 1000),
                            curve: Curves.easeInOutCubicEmphasized,
                            direction: Direction.horizontal,
                            offset: 0.9,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                // color: Colors.red,
                                height: 400,
                                width: 500,
                                child: Column(children: [
                                  customTextFormField('Name', nameController),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  customTextFormField(
                                      'Purpose Of Pooja', purposeOfPoojaController),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  customTextFormField('Address', addressController),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  customTextFormField(
                                      'Phone Number', phoneNumberController),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  isSubmitted  ?   const CircularProgressIndicator(color: footerColor,):ElevatedButton(
                                    onPressed: () {
                                      print(
                                          "${nameController.text} .................[GREEN]");
                                      print(
                                          "${purposeOfPoojaController.text} .................[GREEN]");
                                      print(
                                          "${addressController.text} .................[GREEN]");
                                      print(
                                          "${phoneNumberController.text} .................[GREEN]");
                                      if (Validations().isUserNameValid(
                                          nameController.text.trim(), context) &&
                                          Validations().isPurposeOfPoojaIsValid(
                                              purposeOfPoojaController.text.trim(),
                                              context) &&
                                          Validations().isAddressValid(
                                              addressController.text.trim(), context) &&
                                          Validations().isMobileNumberValid(
                                              phoneNumberController.text.trim(),
                                              context)) {
                                        sendEmail(
                                            email: addressController.text,
                                            message: purposeOfPoojaController.text,
                                            name: nameController.text,
                                            subject: phoneNumberController.text,
                                            context: context,
                                            dialogueWidth: 500);
                                      }
                                    },
                                    style: ButtonStyle(
                                        elevation: MaterialStateProperty.all(0),
                                        backgroundColor:
                                        MaterialStateProperty.all(footerColor),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              side: const BorderSide(color: footerColor),
                                              borderRadius: BorderRadius.circular(5),
                                            ))),
                                    child: const Text(
                                      'Submit',
                                      style: TextStyle(fontFamily: fontFamily),
                                    ),
                                  )
                                ]),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                  ],
                ),
              ),

              Footer(
                sizingInformation: sizingInformation,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customTextFormField(
    title,
    controller,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: text,
            fontFamily: fontFamily,
          ),
        ),
        TextFormField(
          controller: controller,
          cursorColor: Colors.yellow,
          // keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: footerColor)),
            hintStyle: TextStyle(
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
