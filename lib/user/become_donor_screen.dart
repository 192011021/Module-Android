import 'package:blood_clg/common.dart';
import 'package:blood_clg/user/become_donor_model.dart';
import 'package:flutter/material.dart';


class BecomeDonorScreen extends StatefulWidget {
  const BecomeDonorScreen({super.key});

  @override
  State<BecomeDonorScreen> createState() => _BecomeDonorScreenState();
}

class _BecomeDonorScreenState extends State<BecomeDonorScreen> {

  final nameText = TextEditingController();
  final mobileText = TextEditingController();
  final emailText = TextEditingController();
  final ageText = TextEditingController();
  final bloodGroupText = TextEditingController();

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
  void dispose() {
    _model
        .saveData(); // Save data when the screen is disposed (e.g., navigating back)
    super.dispose();
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
      ),

     body: Container(
      
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
                 "Become a Donor",
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
                 controller: nameText,
                 style: CommonStyles.black12(),
                 decoration: InputDecoration(
                   hintText: "Name",
                   labelText: "Name",
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
                 controller: mobileText,
                 style: CommonStyles.black12(),
                 decoration: InputDecoration(
                   hintText: "Mobile Number",
                   labelText: "Mobile Number",
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
                 controller: emailText,
                 style: CommonStyles.black12(),
                 decoration: InputDecoration(
                   hintText: "E Mail",
                   labelText: "E Mail",
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
                 controller: ageText,
                 style: CommonStyles.black12(),
                 decoration: InputDecoration(
                   hintText: "Age",
                   labelText: "Age",
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
                 controller: bloodGroupText,
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
             ],
           ),
         ),
             SizedBox(
               height: 50,
             ),
             Center(
               child: ElevatedButton(
                   onPressed: () async {
                     if (nameText.text.isNotEmpty &&
                         mobileText.text.isNotEmpty &&
                         emailText.text.isNotEmpty &&
                         ageText.text.isNotEmpty &&
                         bloodGroupText.text.isNotEmpty
                     ) {
                       _model.name
                           .add(nameText.text);
                       _model.mobileNo.add(mobileText.text);
                       _model.email.add(emailText.text);
                       _model.age.add(ageText.text);
                       _model.bloodGroup.add(bloodGroupText.text);


                       await _model.saveData();

                       await _model.createDonor();

                       nameText.clear();
                       mobileText.clear();
                       emailText.clear();
                       ageText.clear();
                       bloodGroupText.clear();

                       setState(() {
                         _model.createDonor();
                         _model.saveData();
                       });
                       showAlertDialog(context);
                     } else {
                       showAlerErrortDialog(context);
                     }
                   },
                   child: Padding(
                     padding: const EdgeInsets.symmetric(
                         vertical: 10, horizontal: 10),
                     child: Text("Add Donor",
                         style: CommonStyles.whiteText15BoldW500()),
                   ),
                   style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(Colors.red),
                       shape:
                       MaterialStateProperty.all<RoundedRectangleBorder>(
                           RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(12.0),
                               side: BorderSide(color: Colors.blue))))),
             ),


           ],
         ),
       ),
     ),
    );
  }


  showAlerErrortDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text(
        "OK",
        style: CommonStyles.green15(),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Add Donor Message !!!",
        style: CommonStyles.black15(),
      ),
      content: Text(
        "Check Entered Details !!!...",
        style: CommonStyles.black13(),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text(
        "OK",
        style: CommonStyles.green15(),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Add Donor !!!",
        style: CommonStyles.black15(),
      ),
      content: Text(
        "Donor Added !!!...",
        style: CommonStyles.black13(),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}

