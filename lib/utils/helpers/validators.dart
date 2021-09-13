bool isEmailValid(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  return (!regex.hasMatch(value)) ? false : true;
}

bool isFieldEmpty(String value) {
  return value.isEmpty ? true : false;
}

bool isNumber(String value) {
  String pattern = r'^(0|[1-9][0-9]*)$';
  RegExp regex = new RegExp(pattern);
  return (!regex.hasMatch(value)) ? false : true;
}

bool allFieldsAreValid(bool email, bool firstName, bool lastName, bool city,
    bool age, bool gender, bool feedback) {
  return email && firstName && lastName && city && age && gender && feedback;
}
