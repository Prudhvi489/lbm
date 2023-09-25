import 'package:labham_subham_web/widgets/awesome_dialog.dart';



class Validations{
  bool isUserNameValid(userName, context) {
    Pattern pattern = r"^[a-zA-Z. ]{3,50}$";
    RegExp regex = RegExp(pattern.toString());
    if (regex.hasMatch(userName)) {
      print(regex.hasMatch(userName).toString());
      return true;
    } else {
      if(userName.isEmpty){
        awesomeDialog(
            context, "Enter a valid Name",400.00);
        return false;
      }else{
        awesomeDialog(
            context, "You have entered digits or special characters",400.00);
        return false;
      }
      return false;
    }
  }


  bool isMobileNumberValid(String mobileNumber,context){
    Pattern pattern = r"^[0-9]{5,10}$";
    RegExp regex = RegExp(pattern.toString());
    if(regex.hasMatch(mobileNumber)){
      return true;
    }else{
      if(mobileNumber.isEmpty){
        awesomeDialog(
            context, "Please enter your Mobile Number",400.00);
      }else{
        awesomeDialog(
            context, "In valid Mobile Number",400.00);
      }
      return false;
    }

  }

  bool isPurposeOfPoojaIsValid(String poojaPurpose,context){
    if(poojaPurpose.isEmpty){
      awesomeDialog(
          context, "Please enter your purpose of pooja",400.00);
      return false;
    }else{
      return true;
    }
  }

  bool isAddressValid(String address, context){
    if(address.isEmpty){
      awesomeDialog(
          context, "Please enter your address",400.00);
      return false;
    }else{
      return true;
    }
  }



}





