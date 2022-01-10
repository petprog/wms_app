import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Support",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(42, 157, 143, 1),
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'We’re happy to help!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromRGBO(38, 70, 83, 1)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Got any issues? We're here to help",
                  style: TextStyle(color: Color.fromRGBO(38, 70, 83, 1)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please fill the form below",
                  style: TextStyle(color: Color.fromRGBO(42, 157, 143, 1)),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(155, 155, 155, 1),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                TextFormField(
                  cursorColor: Color.fromRGBO(42, 157, 143, 1),
                  decoration: const InputDecoration(
                    hintText: "example@gmail.com",
                    hintStyle:
                        TextStyle(color: Color.fromRGBO(155, 155, 155, 1)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(207, 229, 226, 1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(42, 157, 143, 1)),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Reason",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(155, 155, 155, 1),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                TextFormField(
                  cursorColor: Color.fromRGBO(42, 157, 143, 1),
                  decoration: const InputDecoration(
                    hintText: "",
                    hintStyle:
                        TextStyle(color: Color.fromRGBO(155, 155, 155, 1)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(207, 229, 226, 1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(42, 157, 143, 1)),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your reason';
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(155, 155, 155, 1),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                TextFormField(
                  cursorColor: Color.fromRGBO(42, 157, 143, 1),
                  decoration: const InputDecoration(
                    hintText: "",
                    hintStyle:
                        TextStyle(color: Color.fromRGBO(155, 155, 155, 1)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(207, 229, 226, 1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(42, 157, 143, 1)),
                    ),
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 4,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your reason';
                    }
                    return null;
                  },
                  onSaved: (value) {},
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(38, 70, 83, 1)),
                      onPressed: () {},
                      child: Text(
                        "Send",
                        style:
                            TextStyle(color: Color.fromRGBO(220, 220, 220, 1)),
                      )),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
