import 'package:flutter/material.dart';

class TopUpAddUnitTab extends StatefulWidget {
  final String route;
  final Color mainColor;
  const TopUpAddUnitTab(
      {Key? key, required this.route, required this.mainColor})
      : super(key: key);

  @override
  _TopUpAddUnitTabState createState() => _TopUpAddUnitTabState();
}

class _TopUpAddUnitTabState extends State<TopUpAddUnitTab> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  "How much electricity Unit do you want to buy?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(38, 70, 83, 1),
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Units',
                style: TextStyle(
                    color: Color.fromRGBO(164, 164, 164, 1), fontSize: 10),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(38, 70, 83, 1),
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: widget.mainColor,
                decoration: InputDecoration(
                  hintText: "0.0",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(164, 164, 164, 1)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    borderSide: BorderSide(color: widget.mainColor),
                  ),
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter amount';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Amount',
                style: TextStyle(
                    color: Color.fromRGBO(164, 164, 164, 1), fontSize: 10),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(38, 70, 83, 1),
                    fontWeight: FontWeight.bold),
                cursorColor: widget.mainColor,
                decoration: InputDecoration(
                  hintText: "0.0",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(164, 164, 164, 1)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    borderSide: BorderSide(color: widget.mainColor),
                  ),
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter amount';
                  }
                  return null;
                },
                onSaved: (value) {},
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(widget.route);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: widget.mainColor, padding: EdgeInsets.all(16)),
                  child: Text(
                    "Continue to payment",
                    style: TextStyle(
                      color: Color.fromRGBO(220, 220, 220, 1),
                      fontWeight: FontWeight.bold,
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
