void main(List<String> arguments) {
  // Strict type decleration / Static type Decleration
  int a = 10;
  int _b = 30;
  print("sum 0f $a and $_b is ${a + _b} ");
  // type inference is a feature that allows the compiler to automatically determine the data type of a variable or an expression based on its value
  var c = 23;
  print('c type is : ${c.runtimeType}');
  var d = 'Fasih';
  print('type of d is ${d.runtimeType}');
  var delegate = SilverChildernListBuilderDelegate();

  // Dynamic type
  dynamic e = 2;
  print('value of e : $e');
  e = 'Ali';
  print("Now value of e is : $e and its Type is ${e.runtimeType}");
}

class SilverChildernListBuilderDelegate {}
