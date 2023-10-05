import 'package:flutter/cupertino.dart';


class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  double result=0;

final TextEditingController textEditingController = TextEditingController();

 void convert(){
              result=double.parse(textEditingController.text)*117;
             setState(() {
             });
             
             }




@override
Widget build(BuildContext context){
    
  return  CupertinoPageScaffold(
    backgroundColor: CupertinoColors.systemGrey3,
    navigationBar:  const CupertinoNavigationBar(
    backgroundColor:  CupertinoColors.systemGrey3,
    middle:  Text('Currency converter'),
    ),
    child: Center(
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
            CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(color: CupertinoColors.black),
              placeholder: 'Input ammount for conversion...',
              prefix: const Icon(CupertinoIcons.money_euro),
              decoration: BoxDecoration(
                 color: CupertinoColors.white,
                border: Border.all(
             ),
             borderRadius: BorderRadius.circular(5),
             
                ),
               keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
               ),
             ),
            const SizedBox(height: 10,),
             CupertinoButton(
               onPressed: convert ,
               color: (CupertinoColors.black),
               child: const Text('Convert'),
              ), 
          ],
        ),
      ),
    )
 
  );
}
}
