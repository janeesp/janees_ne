import 'package:flutter/material.dart';

class SingPage extends StatefulWidget {
  const SingPage({Key? key}) : super(key: key);

  @override
  State<SingPage> createState() => _SingPageState();
}

class _SingPageState extends State<SingPage> {
  RegExp Email_validation=RegExp(r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-][a-zA-Z0-9-]+$)");
  TextEditingController password_controler=TextEditingController();
  TextEditingController Email_controler=TextEditingController();
  bool value =false;
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.blue,
              ),

            ),
            SizedBox(
              height: width * 0.03,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "UserName",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
            ),
            SizedBox(
              height: width * 0.03,
            ),
            TextFormField(
              controller: Email_controler,
              decoration: InputDecoration(
                  hintText: "Email",

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
            ),
            SizedBox(
              height:width * 0.03 ,
            ),
            TextFormField(
              obscureText: value? false:true ,
              controller: password_controler,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    value=!value;
                    setState(() {
                      
                    });
                  },
                    child:value? Icon(Icons.remove_red_eye):Icon(Icons.visibility_off)),
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
            )

          ],
        ),
      ),

    );
  }
}
