import 'dart:io';

void main() {
  //No.1
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  print(a.where((element) => element < 5).toList());

  //No.2
  List a_list = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List common = a_list.where((element) => b.contains(element)).toList();
  print(common);

  //No.3
  //a simple program to check if its a palindrome using mum example
  String palindrome = "mum";
  if (palindrome == "mum") {
    print("The string is a palindrome");
  } else {
    print("The string is not palindrome");
  }

  //No.4
  List take_list = [5, 10, 15, 20, 25];
  List sort = [take_list.first, take_list.last];
  print(sort);

  //No.5
}
