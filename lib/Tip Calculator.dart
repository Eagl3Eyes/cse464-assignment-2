import 'package:class_01/widget/Simple%20input%20field.dart';
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator ({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {

  final formKey = GlobalKey<FormState>();

  final totalBillController = TextEditingController();
  final totalTipController = TextEditingController();
  final totalPeopleController = TextEditingController();

  static const Color containerColor = Color(0xffF5F8FB);
  static const Color textBlack = Color(0xff232323);
  static const Color textLightBlack = Color(0xff717171);
  static const Color clearButtonColor = Color(0xffFF7511);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tip Calculator",
          style: TextStyle(fontSize: 18, color: Colors.black87, fontWeight: FontWeight.w600)),
        backgroundColor: Colors.white,
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 3.0,

      ),

      body: Padding(
        padding: const EdgeInsets.all(10),

        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(

                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const Text("Total Bill", style: TextStyle(color: textLightBlack,),),
                      Text("\$ ${totalBillController.text}", style: const TextStyle(color: textBlack, fontWeight: FontWeight.w600, fontSize: 25)),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Person" , style: TextStyle(color: textLightBlack, fontSize: 16),),
                          Text("Total Bill", style: TextStyle(color: textLightBlack,fontSize: 16),)
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("05", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
                          Text("\$ 20.0", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  padding: const EdgeInsets.all(15),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Amount Per Person", style: TextStyle(color: textLightBlack,fontSize: 16),),
                      Text("\$ 0.00", style: TextStyle(color: textBlack, fontWeight: FontWeight.w600, fontSize: 18)),
                    ],
                  ),
                ),

               const SizedBox(height: 100),

               //const Spacer(),

               SimpleInputField(
                   controller: totalBillController,
                   title: "Total Bill",
                   iconData: Icons.attach_money,
                   hintText: "Please enter total bill"),   //TotalBill
                SimpleInputField(
                    controller: totalTipController,
                    title: "Tip Percentage",
                    iconData: Icons.percent,
                    hintText: "Please enter tip Percentage"),  //TipPercentage
                SimpleInputField(
                    controller: totalPeopleController,
                    title: "Number of people",
                    hintText: "Please enter number of people"),   //NumberOfPeople

                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          formKey.currentState!.validate();
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text("Calculate", style: TextStyle(color: Colors.white),),

                        ),

                      ),
                    ),

                    const SizedBox(width: 10,),

                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Clear", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                )

              ],

            ),
          ),
        ),


      ),
    );
  }
}
