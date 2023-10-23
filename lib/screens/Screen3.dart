import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/donordetails.dart';
import 'package:flutter_application_1/screens/screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("All Donors"),
          backgroundColor: Colors.red,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: donors.length,
            itemBuilder: (context, index) {
              var donor = donors[index];
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen4(donor: donor),
                      ),
                    );
                  },
                  child: Container(
                    width: 372,
                    height: 190,
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                donors[index]["name"].toString(),
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
                                  donors[index]["blood"].toString(),
                                  style: TextStyle(color: Colors.white),
                                )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            donors[index]["city"].toString(),
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            donors[index]["number"].toString(),
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            donors[index]["date"].toString(),
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
