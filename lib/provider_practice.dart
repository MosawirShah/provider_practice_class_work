import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/change_value.dart';

class  ProviderPractice extends StatefulWidget {
  const ProviderPractice({Key? key}) : super(key: key);

  @override
  State< ProviderPractice> createState() => _ProviderPracticeState();
}

class _ProviderPracticeState extends State< ProviderPractice> {

  @override
  Widget build(BuildContext context) {
    print("Nearest Build called ");
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Practice"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.watch<ChangeValue>().value.toString(), style: TextStyle(fontSize: 30),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                ),
                  onPressed: (){
                  context.read<ChangeValue>().decrementValue();
                  }, child: const Icon(Icons.remove,size: 30,)),
             const SizedBox(width: 50,),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                ),
                  onPressed: (){
                    if(context.watch<ChangeValue>().value <  10){
                      context.read<ChangeValue>().incrementValue();
                    }else{
                      print("limit excedded");
                    }

                  }, child: const Icon(Icons.add,size: 30,)),
            ],
          ),

        ],
      ),
    );
  }
}
