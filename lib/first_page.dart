import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Wedgets/ElevationButtonNum.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  State<FirstScreen> createState() => _calclaterState();
}

class _calclaterState extends State<FirstScreen> {

  bool hasNumber = true;
  dynamic? number1 =null ;
  int? number2 =0;
  int result =0;
  String?  opration ='+';
  String? text;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFF5F7161),borderRadius: BorderRadius.circular(10)
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              child: Text(

                   '${number1.toString()} $opration  ${number2.toString()} = ${result.toString()}',
                  style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEFEAD8))),
            ),
          ),
          Row(children:[
            ElevationButtonNum(number:"+", onActionPressd:(){
              setState((){
                if(opration== "+"){
                  opration = "+";
                }
              });
            }),
            ElevationButtonNum(number:"-", onActionPressd:(){
              setState((){
                if(opration== "-"){
                  opration = "-";
                }
              });
            }),
            ElevationButtonNum(number:"*", onActionPressd:(){
              setState((){
                if(opration== "*"){
                  opration = "*";
                }
              });

            }),
          ],),

          Row(children: [
            ElevationButtonNum(number:"1", onActionPressd:(){

              setState((){
                number2 = 0;
                if(number1 == null){
                  number1 = 1;
                }
                if (hasNumber) {
                  number2 = 1;
                }
                number2= 1;

              });
            }),
            ElevationButtonNum(number:"2", onActionPressd:(){
              setState((){
                number2 = 0;
                if(number1 == null){
                  number1 = 2;
                }
                if (hasNumber) {
                  number2 = 2;
                }
                number2= 2;
                print(number1! + number2!);
              });
            }),
            ElevationButtonNum(number:"3", onActionPressd:(){
              setState((){
                number2 = 0;
                if(number1 == null){
                  number1 = 3;
                }
                if (hasNumber) {
                  number2 = 3;
                }
                number2= 3;
                print(number1! + number2!);
              });
            }),
          ],),
          Row(children: [
            ElevationButtonNum(number:"4", onActionPressd:(){
              setState((){

                number2 = 0;
                if(number1 == null){
                  number1 = 4;
                }
                if (hasNumber) {
                  number2 = 4;
                }
                number2= 4;
                print(number1! + number2!);
              });
            }),
            ElevationButtonNum(number:"5", onActionPressd:(){
              setState((){
                number2 = 0;
                if(number1 == null){
                  number1 = 5;
                }
                if (hasNumber) {
                  number2 = 5;
                }
                number2= 5;
                print(number1! + number2!);
              });
            }),
            ElevationButtonNum(number:"6", onActionPressd:(){
              setState((){
                number2 = 0;
                if(number1 == null){
                  number1 = 6;
                }
                if (hasNumber) {
                  number2 = 6;
                }
                number2= 6;
                print(number1! + number2!);
              });
            }),
          ],),
          Row(children: [
            ElevationButtonNum(number:"7", onActionPressd:(){
              setState((){
                number2 = 0;
                if(number1 == null){
                  number1 = 7;
                }
                if (hasNumber) {
                  number2 = 7;
                }
                number2= 7;
                print(number1! + number2!);
              });
            }),
            ElevationButtonNum(number:"8", onActionPressd:(){
              setState((){
                number2 = 0;
                if(number1 == null){
                  number1 = 8;
                }
                if (hasNumber) {
                  number2 = 8;
                }
                number2= 8;
                print(number1! + number2!);
              });
            }),
            ElevationButtonNum(number:"9", onActionPressd:(){
              setState((){
                number2 = 0;
                if(number1 == null){
                  number1 = 9;
                }
                if (hasNumber) {
                  number2 = 9;
                }
                number2= 9;
                print(number1! + number2!);
              });
            }),
          ],),

          Text('${result.toString()} $opration'),
          ElevationButtonNum(number:"calclate", onActionPressd:(){
            setState((){

              if(opration =="+"){
                result = number1 + number2;
              }
              else if(opration =="-"){
                result = number1 - number2;
              }
              else if(opration =="*"){
                result = number1 * number2;
              }

            });
          }),
          SizedBox(height: 10,),
          ElevationButtonNum(number:"clear", onActionPressd:(){
            setState((){
              number1 = null;
              number2 = null;
              result = 0;
              opration = "+";


            });
          }),

        ],
      ),
    );
  }
}
