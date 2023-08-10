import 'package:flutter/material.dart';

class LoginAdd extends StatelessWidget {
  const LoginAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
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
              decoration: InputDecoration(
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
