import 'dart:io';
void main(){
  performTask();
}
void performTask() async{
  task1();
  String task2Result= await task2();
  print(task2Result);task3(task2Result);
}

void task1(){
 String result='Task 1 data';print('task1 complete');

}
Future task2() async{
  Duration ThreeSeconds=Duration(seconds: 3);
  String result;
  await Future.delayed(ThreeSeconds,(){
    result="Task 2 data";
    print('task2 complete');
  });
  return result;
}

void task3(String task2Data){
  String result='Task 3 data';print('task3 complete with $task2Data');
}