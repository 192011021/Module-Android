import 'package:blood_clg/common.dart';
import 'package:flutter/material.dart';


class NeedBloodScreen extends StatefulWidget {
  const NeedBloodScreen({super.key});

  @override
  State<NeedBloodScreen> createState() => _NeedBloodScreenState();
}

class _NeedBloodScreenState extends State<NeedBloodScreen> {
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
                "Need For Blood",
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
                         "There are many reasons patients need blood. A common misunderstanding about blood usage is that accident victims are the patients who use the most blood. Actually, people needing the most blood include those:",
                          style: CommonStyles.black15(),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "1) Being treated for cancer",
                          style: CommonStyles.black15(),
                        ),
                      ),TextButton(
                        onPressed: () {},
                        child: Text(
                          "2) Undergoing orthopedic surgeries",
                          style: CommonStyles.black15(),
                        ),
                      ),TextButton(
                        onPressed: () {},
                        child: Text(
                          "3) Undergoing cardiovascular surgeries",
                          style: CommonStyles.black15(),
                        ),
                      ),TextButton(
                        onPressed: () {},
                        child: Text(
                          "4) Being treated for inherited blood disorders",
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
