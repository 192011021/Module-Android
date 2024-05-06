import 'package:blood_clg/common.dart';
import 'package:flutter/material.dart';


class WhoCouldHelpScreen extends StatefulWidget {
  const WhoCouldHelpScreen({super.key});

  @override
  State<WhoCouldHelpScreen> createState() => _WhoCouldHelpScreenState();
}

class _WhoCouldHelpScreenState extends State<WhoCouldHelpScreen> {
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
                "Who you Could Help",
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
                              "Every 2 seconds, someone in the World needs blood. Donating blood can help:",
                              style: CommonStyles.black15(),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              " 1) People who go through disasters or emergency situations.",
                              style: CommonStyles.black15(),
                            ),
                          ),TextButton(
                            onPressed: () {},
                            child: Text(
                              "2) People who lose blood during major surgeries.",
                              style: CommonStyles.black15(),
                            ),
                          ),TextButton(
                            onPressed: () {},
                            child: Text(
                              "3) People who have lost blood because of a gastrointestinal bleed.",
                              style: CommonStyles.black15(),
                            ),
                          ),TextButton(
                            onPressed: () {},
                            child: Text(
                              "4) Women who have serious complications during pregnancy or childbirth.",
                              style: CommonStyles.black15(),
                            ),
                          ),TextButton(
                            onPressed: () {},
                            child: Text(
                              "5) People with cancer or severe anemia sometimes caused by thalassemia or sickle cell disease.",
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
