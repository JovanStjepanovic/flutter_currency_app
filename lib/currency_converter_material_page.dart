import 'package:flutter/material.dart';



class CureencyPage extends StatefulWidget{
  
  const CureencyPage({super.key});
 
 @override
  State<CureencyPage> createState() =>_CurrencyState();
}


class _CurrencyState extends State<CureencyPage>{
 
 double result=0;

final TextEditingController textEditingController = TextEditingController();

 void convert(){
              result=double.parse(textEditingController.text)*117;
             setState(() {
             });
             
             }




@override
Widget build(BuildContext context){
    
 final border = OutlineInputBorder(
                borderSide: const BorderSide(
                color: Colors.black,
                width: 2.0,
                style: BorderStyle.solid,
                strokeAlign: BorderSide.strokeAlignInside,),
                borderRadius: BorderRadius.circular(5),
              );

  return  Scaffold(
    backgroundColor: Colors.blueGrey,
    appBar: AppBar(
    backgroundColor: Colors.blueGrey,
    elevation: 0,
    title: const Text('Currency converter'),
    centerTitle: true,
    ),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(
            margin: const EdgeInsets.all(8),
             child:  Text('${ result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)} RSD', 
              style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255 ,255, 255, 255)
              ),
              ),
           ),
            TextField(
              controller: textEditingController,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText:'Input ammont for conversion' 
               , hintStyle: const TextStyle(color: Colors.black),
               prefixIcon: const Icon(Icons.monetization_on_outlined),
               prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: border, 
                enabledBorder: border,
                ),
               keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
               ),
             ),
            const SizedBox(height: 10,),
             ElevatedButton(
               onPressed: convert ,
                style: TextButton.styleFrom(
                minimumSize:  const Size(double.infinity,50),  
                backgroundColor: (Colors.black),
                foregroundColor: (Colors.white),
                shape:(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                
              
                ),
               child: const Text('Convert'),
              ), 
          ],
        ),
      ),
    )
 
  );
}
}




