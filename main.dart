import 'dart:io';

List menu = ["starter", "mainCourse", "desert"];
List ratingList = [
  {
    1: "Bad",
    2: "Poor",
    3: "Average",
    4: "Good",
    5: "Excellent",
  }
];
Map<String, double> starter = {
  'WONGTON': 1.99,
  'SAMOSA': 2.49,
  'ROLLS': 2.49,
  'SALAD': 1.99,
  'SOUP': 2.99,
};
Map<String, double> mainCourse = {
  'BURGER': 5.99,
  'PIZZA': 8.99,
  'PASTA': 7.99,
  'SALAD': 4.99,
  'FRIES': 2.99,
};

Map<String, double> desert = {
  'KHEER': 4.99,
  'PUDDING': 2.99,
  'CUSTARD': 3.99,
  'MILKSHAKE': 4.99,
  'GULAB JAMUN': 2.99,
};

double? starterBill;
double? mainCourseBill;
double? desertBill;
double? finalBill;

void main() {
  print('==== Restaurant Management ====');
  print('1. View Menu');
  print('2. View Ratings');
  print('3. Pay Bill');
  print('4. Exit');
  print('===============================');

  stdout.write('Please Enter Value: ');
  int input = int.parse(stdin.readLineSync()!);

  // Menu items as a map
  if (input == 1) {
    viewMenu(input);
  } else if (input == 2) {
    viewRatings();
  } else if (input == 3) {
    payBill(starterBill!, mainCourseBill!, desertBill!);
  }
} // void main end

// View Menu function Strt
void viewMenu(
  int input,
) {
  print('===Starter==='); //
  print('===Main Course==='); //
  print('===Desert==='); //

  stdout.write('Please Enter Value: ');
  int inputMenu = int.parse(stdin.readLineSync()!);

  if (inputMenu == 1) {
    // STARTER
    for (var chooseStarter in starter.keys) {
      print('${chooseStarter} - \ ${starter[chooseStarter]}');
    }
    stdout.write('Please Choose Starter: ');
    String selectStarter = stdin.readLineSync()!.toUpperCase();
    String chooseStarter = selectStarter;
    if (starter.values.isNotEmpty) {
      starterBill = starter[selectStarter];
      print('$chooseStarter: ${starter[selectStarter]}');
      ;
    } else {
      print('Item not Found');
    }
  } else if (inputMenu == 2) {
    // MAIN COURSE
    for (var chooseMainCourse in mainCourse.keys) {
      print('${chooseMainCourse} - \ ${mainCourse[chooseMainCourse]}');
    }
    stdout.write('Please Choose Main Course: ');
    String selectMainCourse = stdin.readLineSync()!.toUpperCase();
    String chooseMainCourse = selectMainCourse;
    if (mainCourse.values.isNotEmpty) {
      mainCourseBill = mainCourse[selectMainCourse];
      print('$chooseMainCourse: ${mainCourse[selectMainCourse]}');
    } else {
      print('Item not Found');
    }
  } else if (inputMenu == 3) {
    // DESERT
    for (var chooseDesert in desert.keys) {
      print('${chooseDesert} - \ ${desert[chooseDesert]}');
    }
    stdout.write('Please Choose Desert: ');
    String selectDesert = stdin.readLineSync()!.toUpperCase();
    String chooseDesert = selectDesert;
    if (mainCourse.values.isNotEmpty) {
      desertBill = desert[selectDesert];
      print('$chooseDesert: ${desert[selectDesert]}');
    } else {
      print('Item not Found');
    }
  } else {
    print('Item not Found');
  }
  payBill(starterBill!, mainCourseBill!, desertBill!);
} // View Menu function End

// Rating Function Start
void viewRatings() {
  print('1: ' + ratingList[0][1]);
  print('2: ' + ratingList[0][2]);
  print('3: ' + ratingList[0][3]);
  print('4: ' + ratingList[0][4]);
  print('5: ' + ratingList[0][5]);

  stdout.write('Rate us: ');
  int inputRating = int.parse(stdin.readLineSync()!);

  if (inputRating == 1) {
    print(ratingList[0][1]);
    print("Thank You please come agin");
  } else if (inputRating == 2) {
    print(ratingList[0][2]);
    print("Thank You please come agin");
  } else if (inputRating == 3) {
    print(ratingList[0][3]);
    print("Thank You please come agin");
  } else if (inputRating == 4) {
    print(ratingList[0][4]);
    print("Thank You please come agin");
  } else if (inputRating == 5) {
    print(ratingList[0][5]);
    print("Thank You please come agin");
  }
} // Rating Function End

void payBill(double starterBill, double mainCourseBill, double desertBill) {
  print('==== Bill ====');

  finalBill = starterBill + mainCourseBill + desertBill;
  print('Your Bil is: \$$finalBill');
}
