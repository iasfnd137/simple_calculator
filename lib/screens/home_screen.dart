import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController firstNumberController = TextEditingController() ;
  TextEditingController secondNumberController = TextEditingController();
  dynamic result='',num1,num2;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Calculator',style: TextStyle(color: Colors.black87),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.white, Colors.grey]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                TextField(
                  controller: firstNumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter First number',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black,width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black,width: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: secondNumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Second number',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black,width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.black,width: 2,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.0),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.black,width: 2)

                    ),
                    child: Center(child: Text('Result :$result',style: TextStyle(fontSize: 25),))),
                SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                            side: BorderSide(
                              color: Colors.black,width: 2
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                      child: Text('Addition'),
                      onPressed: () {
                        var FirstNumber=firstNumberController.text;
                        var SecondNumber=secondNumberController.text;
                        if(FirstNumber.isNotEmpty && SecondNumber.isNotEmpty){

                        }else{
                          Fluttertoast.showToast(
                              msg: "please filled All the field",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.black.withOpacity(0.5),
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        }
                         setState(() {
                           num1=int.parse(firstNumberController.text);
                           num2 = int.parse(secondNumberController.text);
                           result = num1+num2;
                         firstNumberController.clear();
                         secondNumberController.clear();

                         });
                         },

                        )
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                            side: BorderSide(
                              color: Colors.black87,width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                      child: Text('Subtraction'),
                      onPressed: () {
                        var FirstNumber=firstNumberController.text;
                        var SecondNumber=secondNumberController.text;
                        if(FirstNumber.isNotEmpty && SecondNumber.isNotEmpty){

                        }else{
                          Fluttertoast.showToast(
                              msg: "please filled All the field",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.black.withOpacity(0.5),
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        }

                        setState(() {
                          num1=int.parse(firstNumberController.text);
                          num2 = int.parse(secondNumberController.text);
                          result = num1-num2;
                          firstNumberController.clear();
                          secondNumberController.clear();

                        });
                        },
                    )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                            side: BorderSide(
                              color: Colors.black,width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                      child: Text('Multiplication'),
                      onPressed: () {
                        var FirstNumber=firstNumberController.text;
                        var SecondNumber=secondNumberController.text;
                        if(FirstNumber.isNotEmpty && SecondNumber.isNotEmpty){

                        }else{
                          Fluttertoast.showToast(
                              msg: "please filled All the field",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.black.withOpacity(0.5),
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        }

                        setState(() {
                          num1=int.parse(firstNumberController.text);
                          num2 = int.parse(secondNumberController.text);
                          result = num1*num2;
                          firstNumberController.clear();
                          secondNumberController.clear();

                        });
                        },
                    )),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                            side: BorderSide(
                              color: Colors.black,width: 2
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                      child: Text('Division'),
                      onPressed: () {

                        var FirstNumber=firstNumberController.text;
                        var SecondNumber=secondNumberController.text;
                        if(FirstNumber.isNotEmpty && SecondNumber.isNotEmpty){

                        }else{
                          Fluttertoast.showToast(
                              msg: "please filled All the field",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.black.withOpacity(0.5),
                              textColor: Colors.white,
                              fontSize: 16.0
                          );
                        }

                        setState(() {
                          num1=int.parse(firstNumberController.text);
                          num2 = int.parse(secondNumberController.text);
                          result = num1/num2;
                          firstNumberController.clear();
                          secondNumberController.clear();

                        });
                      },
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
