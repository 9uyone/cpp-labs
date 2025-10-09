import 'dart:math';

void main() {
  const double x = 7.62, y = 0.37;
  var ft = outer(x, y);
  
  for(var i = 0; i < 10; ++i)
    ft();
}

Function outer(double x, double y) {
  b(x, y) => 3 + x + y*y;
  
  return (){
    var a = (2 + pow(b(x, y), 2) + pow(sin(y*y*y), 2))
      .toStringAsFixed(2);
    
    print("x = $x; y = $y; a = $a");
    ++x;
  };
}
