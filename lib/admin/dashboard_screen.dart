import 'package:blood_clg/common.dart';
import 'package:flutter/material.dart';


class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        ),
        body: Column(
          children: [
            Container(
              color: Colors.black,
              height: 100,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(30),
              child: Text("DashBoard",
                style: CommonStyles.redText20BoldW500(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: (
              Column(
                children: [

                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)
                    ),
                    color: Colors.teal[200],
                    child: Padding(
                      padding: EdgeInsets.symmetric(

                          horizontal: 20,
                          vertical: 10
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: (){
                            },
                            child: Text("Blood Donor Available",
                              style: CommonStyles.black15(),
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.double_arrow,
                            color: Colors.black,
                          ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)
                    ),
                    color: Colors.lightGreenAccent[200],

                    child: Padding(
                      padding: EdgeInsets.symmetric(

                          horizontal: 20,
                          vertical: 10
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: (){

                            },
                            child: Text("All User Quires",
                              style: CommonStyles.black15(),
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.double_arrow,
                            color: Colors.black,
                          ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),


                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)
                    ),
                    color: Colors.purpleAccent[200],
                    child: Padding(
                      padding: EdgeInsets.symmetric(

                          horizontal: 20,
                          vertical: 10
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: (){

                            },
                            child: Text("Pending Queries",
                              style: CommonStyles.black15(),
                            ),
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.double_arrow,
                            color: Colors.black,
                          ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              )
              ),
            ),
          ],
        ),



    );
  }
}
