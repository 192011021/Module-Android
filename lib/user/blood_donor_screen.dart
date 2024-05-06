import 'package:blood_clg/common.dart';
import 'package:blood_clg/user/become_donor_model.dart';
import 'package:flutter/material.dart';

class BloodDonorScreen extends StatefulWidget {
  const BloodDonorScreen({super.key});

  @override
  State<BloodDonorScreen> createState() => _BloodDonorScreenState();
}

class _BloodDonorScreenState extends State<BloodDonorScreen> {

  AddDonorModel _model = AddDonorModel();

  Future<void> _initData() async {
    await _model.createDonor(); // Load data when initializing the state
    setState(() {}); // Trigger a rebuild to update the UI
  }

  @override
  void initState() {
    super.initState();
    _initData();
    setState(() {});
    // Load data when initializing the state
  }
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
        actions: [ IconButton(
            onPressed: () {
              setState(() {
                _model.saveData();
                _model.createDonor();
              });
            },
            icon: Icon(Icons.replay_circle_filled_rounded)),

        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                color: Colors.black,
                height: 100,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(30),
                child: Text(
                  "Donor List",
                  style: CommonStyles.redText20BoldW500(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListView.builder(
                itemCount: _model.name.length,
                primary: false,
                shrinkWrap: true,

                itemBuilder: (context,index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Card(
                      color: Colors.red[200],
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1, child: Image.asset("assets/images/img_3.png")),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text(_model.name[0],
                              style: CommonStyles.black12(),),

                                SizedBox(
                                  height: 10,
                                ),
                                Text("Blood Group  :  "+ _model.bloodGroup[0],
                                  style: CommonStyles.black12(),),

                                SizedBox(
                                  height: 10,
                                ),
                                Text("Mob No  :  "+ _model.mobileNo[0],
                                  style: CommonStyles.black12(),),


                                SizedBox(
                                  height: 10,
                                ),
                                Text("Age  :  "+ _model.age[0],
                                  style: CommonStyles.black12(),),
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  );
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
