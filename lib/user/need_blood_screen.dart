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
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(
          ),
          child: Column(
            children: [
              Container(
                color: Colors.black,
                height: 100,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(30),
                child: Text(
                  "Need Blood",
                  style: CommonStyles.redText20BoldW500(),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    TextFormField(

                      style: CommonStyles.black12(),
                      decoration: InputDecoration(
                        hintText: "Blood Group",
                        labelText: "Blood Group",
                        labelStyle: CommonStyles.black12(),
                        hintStyle: CommonStyles.black12(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),


                    TextFormField(
maxLines: 6,
                      style: CommonStyles.black12(),
                      decoration: InputDecoration(
                        hintText: "",
                        labelText: "Reason, Why you need Blood ?",
                        labelStyle: CommonStyles.black12(),
                        hintStyle: CommonStyles.black12(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13)),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 60,
              ),

              ElevatedButton(onPressed: (){},   child: Padding(
              padding: const EdgeInsets.symmetric(
              vertical: 10, horizontal: 10),
          child: Text("Search",
              style: CommonStyles.whiteText15BoldW500()),
        ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              shape:
              MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.blue)))))

            ],
          ),
        ),
      ),

    );
  }
}
