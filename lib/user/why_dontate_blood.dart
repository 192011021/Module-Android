import 'package:blood_clg/common.dart';
import 'package:flutter/material.dart';


class WhyDonateBloodScreen extends StatefulWidget {
  const WhyDonateBloodScreen({super.key});

  @override
  State<WhyDonateBloodScreen> createState() => _WhyDonateBloodScreenState();
}

class _WhyDonateBloodScreenState extends State<WhyDonateBloodScreen> {
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
                "Why Donate Blood",
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
                          Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset("assets/images/img_2.png",

                              ))
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
