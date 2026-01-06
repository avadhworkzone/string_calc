class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    
    String delimiter = ',';
    String numbersToProcess = numbers;
    
    if (numbers.startsWith('//')) {
      int newlineIndex = numbers.indexOf('\n');
      delimiter = numbers.substring(2, newlineIndex);
      numbersToProcess = numbers.substring(newlineIndex + 1);
    }
    
    String normalized = numbersToProcess.replaceAll('\n', delimiter);
    List<String> parts = normalized.split(delimiter);
    int sum = 0;
    for (String part in parts) {
      sum += int.parse(part);
    }
    return sum;
  }
}