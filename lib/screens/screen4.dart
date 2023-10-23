import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/donordetails.dart';

class Screen4 extends StatefulWidget {
  final Map<String, dynamic> donor;

  const Screen4({super.key, required this.donor});
  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Donor Details"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                widget.donor["name"],
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 2,
                width: 308,
                color: Colors.black,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                widget.donor["city"],
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 2,
                width: 308,
                color: Colors.black,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                widget.donor["number"],
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 2,
                width: 308,
                color: Colors.black,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                widget.donor["date"],
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 2,
                width: 308,
                color: Colors.black,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Blood Group",
                    style: TextStyle(fontSize: 14),
                  ),
                  Container(
                    width: 34,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(3)),
                    child: Center(
                        child: Text(
                      widget.donor["blood"],
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 200,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Call"),
                  style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(253, 50)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
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
