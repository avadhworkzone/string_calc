class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    
    List<String> parts = numbers.split(',');
    // Temporarily limit to 2 numbers to show RED for multiple numbers
    if (parts.length > 2) {
      throw Exception('Too many numbers - not implemented yet');
    }
    
    int sum = 0;
    for (String part in parts) {
      sum += int.parse(part);
    }
    return sum;
  }
}