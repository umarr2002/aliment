import 'package:aliment/variables.dart';
import 'package:flutter/material.dart';

class VerifyButton extends StatefulWidget {
  
   const VerifyButton({super.key,  required this.funcValid, required this.funcSimulate});

  final VoidCallback funcValid;
  final VoidCallback funcSimulate;
  @override
  State<VerifyButton> createState() => _VerifyButtonState();
}

class _VerifyButtonState extends State<VerifyButton> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                onTap: () {
                  onClick = true;
                  widget.funcValid;

                  isLoading ? null : widget.funcSimulate;
                },
                child: Column(
                  children: [
                    Container(
                      height: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.amber,
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xffFF9B63).withOpacity(1),
                            const Color(0xffFF621F).withOpacity(1)
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 15,
                            height: 15,
                            child: isLoading
                                ? const CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.black,
                                  )
                                : const Text(""),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          onClick
                              ? const Text(
                                  "Verify...",
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              : const Text(
                                  "Verify",
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
  }
}