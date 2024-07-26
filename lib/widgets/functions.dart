
import 'package:aliment/variables.dart';
import 'package:flutter/material.dart';

class FunctionsGlobal extends StatelessWidget {
  const FunctionsGlobal({super.key});

  void simulateLoading() async {
    setState(() {
      isLoading = true;
    });

    validateOtp();

    await Future.delayed(Duration(seconds: 2));

    setState(() {
      isLoading = false;
    });
  }

  void validateOtp() {
    if (sendPassword != defaulPassword) {
      check = false;
    }
  }



  @override
  Widget build(BuildContext context) {

    

    return const Placeholder();
  }
  
  void setState(Null Function() param0) {}
}
