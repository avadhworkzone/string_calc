class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    
    String normalized = numbers.replaceAll('\n', ',');
    List<String> parts = normalized.split(',');
    int sum = 0;
    for (String part in parts) {
      sum += int.parse(part);
    }
    return sum;
  }
}