import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:landing_page/utils/helpers/validators.dart';
import 'package:landing_page/utils/widgets/custom_icon_button.dart';
import 'package:landing_page/utils/widgets/feedback/custom_text_field.dart';
import 'package:landing_page/utils/widgets/feedback/main_text.dart';
import 'package:landing_page/utils/widgets/feedback/main_title.dart';
import 'package:landing_page/utils/widgets/feedback/subtitle.dart';

class MobileView extends StatefulWidget {
  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
  final cityController = TextEditingController();
  final emailController = TextEditingController();
  final feedbackController = TextEditingController();
  var validateEmail = false;
  var validateFirstName = false;
  var validateLastName = false;
  var validateAge = false;
  var validateGender = false;
  var validateCity = false;
  var validateFeedback = false;

  @override
  Widget build(BuildContext context) {
    CollectionReference reQuirementUsers =
        FirebaseFirestore.instance.collection('users');
    var screenSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: screenSize.width),
      child: ListView(
        children: [
          SizedBox(height: screenSize.height * .1),
          Container(
            constraints: BoxConstraints(minHeight: screenSize.height * .4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenSize.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: screenSize.width,
                        alignment: Alignment.center,
                        child: MainTitle(
                          fontSize: screenSize.height * .05,
                          isCentered: true,
                        ),
                      ),
                      SizedBox(height: screenSize.height * .05),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .05),
                  width: screenSize.width * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/images/banner2.svg',
                        width: screenSize.height * .4,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: screenSize.width * .05),
                  width: screenSize.width * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenSize.height * .05),
                      Container(
                        width: screenSize.width * .45,
                        child: MainText(
                          fontSize: screenSize.height * .02,
                          isCentered: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenSize.height * .1),
          Container(
            width: screenSize.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: SubTitle(
                    fontSize: screenSize.height * .035,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .05,
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .2),
                  child: Row(
                    children: [
                      CustomTextField(
                        name: 'Nombre',
                        hint: 'Marco',
                        screenSize: screenSize,
                        maxWidth: screenSize.width,
                        width: screenSize.width * .6,
                        controller: firstnameController,
                        validate: validateFirstName,
                        errorText: 'Nombre inválido',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .2),
                  child: Row(
                    children: [
                      CustomTextField(
                        name: 'Apellido',
                        hint: 'Herrera',
                        screenSize: screenSize,
                        maxWidth: screenSize.width,
                        width: screenSize.width * .6,
                        controller: lastnameController,
                        validate: validateLastName,
                        errorText: 'Apellido inválido',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .2),
                  child: Row(
                    children: [
                      CustomTextField(
                        name: 'Edad',
                        hint: '18',
                        screenSize: screenSize,
                        width: screenSize.height * .06,
                        controller: ageController,
                        validate: validateAge,
                        errorText: 'Edad inválida',
                      ),
                      SizedBox(
                        width: screenSize.width * .01,
                      ),
                      CustomTextField(
                        name: 'Género',
                        hint: 'Masculino',
                        screenSize: screenSize,
                        width: screenSize.width * .15,
                        controller: genderController,
                        validate: validateGender,
                        errorText: 'Género inválido',
                      ),
                      SizedBox(
                        width: screenSize.width * .01,
                      ),
                      CustomTextField(
                        name: 'Distrito',
                        hint: 'Santiago de Surco',
                        screenSize: screenSize,
                        width: screenSize.width * .3,
                        controller: cityController,
                        validate: validateCity,
                        errorText: 'Ciudad inválida',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .2),
                  child: Row(
                    children: [
                      CustomTextField(
                        name: 'Correo',
                        hint: 'marco@gmail.com',
                        screenSize: screenSize,
                        maxWidth: screenSize.width,
                        width: screenSize.width * .6,
                        controller: emailController,
                        validate: validateEmail,
                        errorText: 'Correo inválido',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .2),
                  child: Row(
                    children: [
                      CustomTextField(
                        name: 'Feedback',
                        hint: 'Escribe aquí tu feedback',
                        screenSize: screenSize,
                        height: screenSize.height * .2,
                        maxWidth: screenSize.width,
                        width: screenSize.width * .6,
                        controller: feedbackController,
                        validate: validateFeedback,
                        errorText: 'Feedback inválido',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: screenSize.width * .2),
                  child: Row(
                    children: [
                      CustomIconButton(
                        text: 'Enviar',
                        icon: Icons.arrow_back,
                        function: () {
                          setState(() {
                            validateEmail = !isEmailValid(emailController.text);
                            validateFirstName =
                                isFieldEmpty(firstnameController.text);
                            validateLastName =
                                isFieldEmpty(lastnameController.text);
                            validateCity = isFieldEmpty(cityController.text);
                            validateAge = !isNumber(ageController.text);
                            validateGender =
                                isFieldEmpty(genderController.text);
                            validateFeedback =
                                isFieldEmpty(feedbackController.text);
                          });
                          if (allFieldsAreValid(
                              !validateEmail,
                              !validateFirstName,
                              !validateLastName,
                              !validateCity,
                              !validateAge,
                              !validateGender,
                              !validateFeedback)) {
                            reQuirementUsers.add({
                              'firstname': firstnameController.text,
                              'lastname': lastnameController.text,
                              'city': cityController.text,
                              'age': int.parse(ageController.text),
                              'email': emailController.text,
                              'gender': genderController.text,
                              'feedback': feedbackController.text,
                            });
                            setState(() {
                              firstnameController.text = '';
                              lastnameController.text = '';
                              cityController.text = '';
                              ageController.text = '';
                              emailController.text = '';
                              genderController.text = '';
                              feedbackController.text = '';
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenSize.height * .1),
        ],
      ),
    );
  }
}
