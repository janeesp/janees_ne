import 'package:flutter/material.dart';
import 'package:janees_new/Login_add.dart';
import 'package:janees_new/sing_up.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController Email_controler=TextEditingController();
  TextEditingController password_controler=TextEditingController();
  RegExp Email_validation=RegExp(r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-][a-zA-Z0-9-]+$)");
  bool value=false;
  @override
  Widget build(BuildContext context) {
   var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: password_controler,
              decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            SizedBox(
              height: width* 0.03,

            ),
            TextFormField(
              controller: password_controler,
              obscureText: value?false:true,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    value=!value;
                    setState(() {
                      
                    });
                  },
                    child:value? Icon(Icons.remove_red_eye):Icon(Icons.visibility_off)),
                hintText: "password",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10)
                 )
              ),
              
            ),
            SizedBox(
              height: width * 0.03,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginAdd(),));
              },
              child: Container(
                height: width * 0.2,
                width: width * 0.3,
                decoration: BoxDecoration(
                    color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Login",style: TextStyle(fontSize: 20),)),
              ),
            ),
            SizedBox(
              height: width * 0.03,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SingPage(),));
              },
              child: Container(
                height: width * 0.2,
                width: width * 0.3,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("sing up",style: TextStyle(fontSize: 20),)),
              ),
            ),


          ],
        ),
      ),

    );
  }
}
