import 'package:shared_preferences/shared_preferences.dart';

class AddDonorModel {
  List<String> name = [];
  List<String> mobileNo = [];
  List<String> email = [];
  List<String> age = [];
  List<String> bloodGroup = [];

  Future<void> createDonor() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      name = prefs.getStringList('name') ?? [];
      mobileNo = prefs.getStringList('mobileNo') ?? [];
      email = prefs.getStringList('email') ?? [];
      age = prefs.getStringList('age') ?? [];
      bloodGroup = prefs.getStringList('bloodGroup') ?? [];
    } catch (e) {
      // Handle exceptions, such as SharedPreferences errors
      print('Error in createMovie: $e');
    }
  }

  Future<void> saveData() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setStringList('name', name);
      prefs.setStringList('mobileNo', mobileNo);
      prefs.setStringList('email', email);
      prefs.setStringList('age', age);
      prefs.setStringList('bloodGroup', bloodGroup);
    } catch (e) {
      // Handle exceptions, such as SharedPreferences errors
      print('Error in saveData: $e');
    }
  }

  // Remove data at a specific index
  void removeDataAtIndex(int index) {
    name.removeAt(index);
    mobileNo.removeAt(index);
    email.removeAt(index);
    age.removeAt(index);
    bloodGroup.removeAt(index);
  }
}
