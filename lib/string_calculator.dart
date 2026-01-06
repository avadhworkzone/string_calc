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
    
    List<int> negatives = [];
    int sum = 0;
    for (String part in parts) {
      int num = int.parse(part);
      if (num < 0) {
        negatives.add(num);
      }
      if (num <= 1000) {
        sum += num;
      }
    }
    
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }
    
    return sum;
  }
}