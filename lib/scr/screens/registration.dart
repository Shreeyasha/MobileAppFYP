import 'package:flutter/material.dart';
import 'package:foodapp/scr/helpers/screen_navigation.dart';
import 'package:foodapp/scr/helpers/style.dart';
import 'package:foodapp/scr/screens/home.dart';
import 'package:foodapp/scr/screens/login.dart';
import 'package:foodapp/scr/screens/methods.dart';
import 'package:foodapp/scr/widgets/CustomText.dart';
import 'package:firebase_auth/firebase_auth.dart';

// class RegistrationScreen extends StatefulWidget {
//   @override
//   _RegistrationScreenState createState() => _RegistrationScreenState();
// }

// class _RegistrationScreenState extends State<RegistrationScreen> {
//   final TextEditingController _name = TextEditingController();
//   final TextEditingController _email = TextEditingController();
//   final TextEditingController _password = TextEditingController();


  
//   showError(String errormessage) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('ERROR'),
//             content: Text(errormessage),
//             actions: <Widget>[
//               ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Text('OK'))
//             ],
//           );
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: white,
//       body: SingleChildScrollView(
//           child: Column(
//         children: [
//           SizedBox(
//             height: 100,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset("images/logo.png", width: 240, height: 240),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Container(
//                 decoration: BoxDecoration(
//                     border: Border.all(color: grey),
//                     borderRadius: BorderRadius.circular(15)),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 10),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: "Username",
                        
//                         icon: Icon(Icons.person)),
//                   ),
//                 )),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Container(
//                 decoration: BoxDecoration(
//                     border: Border.all(color: grey),
//                     borderRadius: BorderRadius.circular(15)),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 10),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: "Email",
//                         icon: Icon(Icons.email)),
//                   ),
//                 )),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Container(
//                 decoration: BoxDecoration(
//                     border: Border.all(color: grey),
//                     borderRadius: BorderRadius.circular(15)),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 10),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: "Password",
//                         icon: Icon(Icons.lock)),
//                   ),
//                 )),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: red,
//                   border: Border.all(color: grey),
//                   borderRadius: BorderRadius.circular(15)),
//               child: Padding(
//                   padding: EdgeInsets.only(top: 10, bottom: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomText(
//                         text: "Register",
//                         color: white,
//                         size: 22,
//                       )
//                     ],
//                   )),
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               changeScreen(context, LoginScreen());
//             },
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomText(
//                   text: "Already Have an Account? Login Here",
//                   size: 20,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: isLoading
          ? Center(
              child: Container(
                height: size.height / 20,
                width: size.height / 20,
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: size.width / 0.5,
                    child: IconButton(
                        icon: Icon(Icons.arrow_back_ios), onPressed: () {Navigator.push(
                  context, MaterialPageRoute(builder: (_) => LoginScreen()));}),
                  ),
                  SizedBox(
                    height: size.height / 50,
                  ),
                  Container(
                    width: size.width / 1.1,
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 1.1,
                    child: Text(
                      "Create Account to Continue!",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Container(
                      width: size.width,
                      alignment: Alignment.center,
                      child: field(size, "Name", Icons.account_box, _name),
                    ),
                  ),
                  Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: field(size, "email", Icons.account_box, _email),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: Container(
                      width: size.width,
                      alignment: Alignment.center,
                      child: field(size, "password", Icons.lock, _password),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  customButton(size),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        "Already have an Account? Login",
                        style: TextStyle(
                          color: grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }

  Widget customButton(Size size) {
    return GestureDetector(
      onTap: () {
        if (_name.text.isNotEmpty &&
            _email.text.isNotEmpty &&
            _password.text.isNotEmpty) {
          setState(() {
            isLoading = true;
          });

          createAccount(_name.text, _email.text, _password.text).then((user) {
            if (user != null) {
              setState(() {
                isLoading = false;
              });
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Home()));
              print("Account Created Sucessfull");
            } else {
              print("Login Failed");
              setState(() {
                isLoading = false;
              });
            }
          });
        } else {
          print("Please enter Fields");
        }
      },
      child: Container(
          height: size.height / 14,
          width: size.width / 1.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: red,
          ),
          alignment: Alignment.center,
          child: Text(
            "Create Account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }

  Widget field(
      Size size, String hintText, IconData icon, TextEditingController cont) {
    return Container(
      height: size.height / 14,
      width: size.width / 1.1,
      child: TextField(
        controller: cont,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}