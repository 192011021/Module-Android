import 'package:blood_clg/common.dart';
import 'package:flutter/material.dart';


class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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
                "About Us",
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
                              "Blood bank is a place where blood bag that is collected from blood donation events is stored in one place. The term “blood bank” refers to a division of a hospital laboratory where the storage of blood product occurs and where proper testing is performed to reduce the risk of transfusion related events",
                              style: CommonStyles.black15(),
                            ),
                          
                          ),
                          
                          SizedBox(
                            height: 30,
                          ),
                          
                          Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset("assets/images/img_1.png",
                              height: 100,
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
