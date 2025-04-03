import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
   Widget build(BuildContext context){
    return const MaterialApp(
      home: QuizApp(),
    );
   }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  State <QuizApp> createState() => _QuizApp();

}
class _QuizApp extends State<QuizApp>{
  int counter=1;
  int counter2=0;
  List<String> questions =["What is your favorite player ?","What is your favorite batsman ?",
  ];

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App",
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,
        ),
      ),
      backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Questions",
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,
              ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text("$counter/10"),
            ],
          ),
          const SizedBox(
            width: 300,
            height: 10,
          ),
          Text(questions[counter2]),

          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("A . Virat Kohli"),
          ),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("A . Virat Kohli"),
          ),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("A . Virat Kohli"),
          ),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("A . Virat Kohli"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
            if(counter2<questions.length-1){
              counter2++;
            }

            
            // if(counter<=4){
            //   counter++;
            // }else{
            //   counter=1;
            // }
          });
        },
        child: const Text("Next"),
      ),
    );
  }
}





















