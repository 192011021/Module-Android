import 'package:blood_clg/common.dart';
import 'package:flutter/material.dart';


class BloodTipsScreen extends StatefulWidget {
  const BloodTipsScreen({super.key});

  @override
  State<BloodTipsScreen> createState() => _BloodTipsScreenState();
}

class _BloodTipsScreenState extends State<BloodTipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 100,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(30),
              child: Text(
                "Blood Tips",
                style: CommonStyles.redText20BoldW500(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "1) You must be in good health.",
                              style: CommonStyles.black15(),
                            ),
                          ),TextButton(
                            onPressed: () {},
                            child: Text(
                              "2) Hydrate and eat a healthy meal before your donation.",
                              style: CommonStyles.black15(),
                            ),
                          ),TextButton(
                            onPressed: () {},
                            child: Text(
                              "3) You’re never too old to donate blood.",
                              style: CommonStyles.black15(),
                            ),
                          ),TextButton(
                            onPressed: () {},
                            child: Text(
                              "4) Rest and relaxed.",
                              style: CommonStyles.black15(),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "5) Don’t forget your FREE post-donation snack.",
                              style: CommonStyles.black15(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
