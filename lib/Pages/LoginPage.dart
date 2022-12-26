import 'package:bobal_drinks/Pages/MainPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  bool userNameEmpty = false;
  bool passwordEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff233F3A),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 75, right: 75, top: 75, bottom: 25),
                child: Image.asset("images/bobal.png"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 77, vertical: 3),
                child: TextFormField(
                  onChanged: (s) {
                    userNameEmpty = false;
                    setState(() {});
                  },
                  controller: userName,
                  cursorColor:const  Color(0xff233F3A).withOpacity(0.02),
                  decoration: InputDecoration(
                    helperText:  userNameEmpty ?"Enter you Username" : "",
                    helperStyle: TextStyle(color: Colors.red,fontSize: 12),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    filled: true,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        "Username : ",
                        style: TextStyle(
                          color: Color(0xff233F3A),
                        ),
                      ),
                    ),
                    fillColor: const Color(0xff9E6B3A),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(
                        color: Color(0xff9E6B3A),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(
                        color:  Color(0xff9E6B3A),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide:  BorderSide(
                        color: userNameEmpty? Colors.red: const Color(0xff9E6B3A),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 77, vertical: 3),
                child: TextFormField(
                  onChanged: (s) {
                    passwordEmpty = false;
                    setState(() {});
                  },
                  cursorColor: const  Color(0xff233F3A).withOpacity(0.02),
                  controller: password,
                  decoration: InputDecoration(
                    helperText:  passwordEmpty ?"Enter you Username" : "",
                    helperStyle: const TextStyle(color: Colors.red,fontSize: 12),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    filled: true,
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Text(
                        "Password : ",
                        style: TextStyle(
                          color: Color(0xff233F3A),
                        ),
                      ),
                    ),
                    fillColor: const Color(0xff9E6B3A),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(
                        color: Color(0xff9E6B3A),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: const BorderSide(
                        color: Color(0xff9E6B3A),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(
                        color:  passwordEmpty ? Colors.red: Color(0xff9E6B3A),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18,),
              GestureDetector(
                onTap: (){
                  userName.text.isNotEmpty && password.text.isNotEmpty?
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const MainPage())):
                  userName.text.isEmpty ? userNameEmpty=true: passwordEmpty =true ;
                  setState(() {
                  });
                },

                child: Container(
                  padding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 42),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff9E6B3A),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xff233F3A),
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
