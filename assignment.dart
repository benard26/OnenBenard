import 'dart:convert';

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
  String multipleWords = "My name is Onen Benard";
  List words = multipleWords.split(" ");
  List reversedWords = words.reversed.toList();
  String reversedString = reversedWords.join(" ");
  print(reversedString);

  //No.6
  List any = [1, 2, 3, 5, 5, 5, 6, 6, 7, 7];
  print(any.toSet().toList());

  //No.7
  final jsonData = '''
    {
      "May": [3, 5],
      "November": [2],
      "December": [1, 4, 2]
    }
  ''';
  //part a
  final birthMonths = json.decode(jsonData);
  List months = birthMonths.keys.toList();
  print(months);

  //part b
  Map<String, int> monthCounts = {};
  birthMonths.forEach((key, value) {
    monthCounts[key] = value.length;
  });
  print("Number of birthdays in each month are below");
  print(monthCounts);

  //part c
  var sortedMonths = monthCounts.entries.toList()
    ..sort((a, b) => a.value.compareTo(b.value));
  var monthWithLowestBirthdays = sortedMonths.first.key;
  var monthWithHighestBirthdays = sortedMonths.last.key;

  print("Month with the most birthdays is $monthWithHighestBirthdays");
  print("Month with the least birthdays is $monthWithLowestBirthdays");
}
