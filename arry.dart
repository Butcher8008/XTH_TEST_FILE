import 'dart:io';

void main(){
  stdout.write("enter how many numbers you want: ");

  int? length= int.parse(stdin.readLineSync()!);

  var list=[];
  for (int i =1; i<=length; i++){
    stdout.write("enter number of $i :");
    int? number = int.parse(stdin.readLineSync()!);
    list.add(number);
  }
  stdout.write("enter the number you want to check wether it exists or not: ");
  int? number_to_check= int.parse(stdin.readLineSync()!);

  for (var check in list){
    // print('number $check is in list');
    if(number_to_check!=check){
      // print(object)
      print('$number_to_check is not in list');
    }
  }
}