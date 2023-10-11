void stackTrace() {
  print("Started Main");
  functionOne();
  print("Finished Main");
}

void functionOne(){
  print("Started F01");
  try {
    functionTwo();
  } catch (e) {
    print("The exception occurred on functionOne.");
    rethrow;
  } finally {
    print("It's reached finally");
  }
  print("Finished F01");
}

void functionTwo(){
  print("Started F02");
  for(int i = 1; i <= 5; i++){
    print(i);
      //double amount = double.parse("not a number");
  }
  print("Finished F02");
}