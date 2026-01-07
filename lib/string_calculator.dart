class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    
    List<String> delimiters = [','];
    String numbersToProcess = numbers;
    
    if (numbers.startsWith('//')) {
      int newlineIndex = numbers.indexOf('\n');
      String delimiterPart = numbers.substring(2, newlineIndex);
      numbersToProcess = numbers.substring(newlineIndex + 1);
      
      delimiters = _parseDelimiters(delimiterPart);
    }
    
    String normalized = numbersToProcess.replaceAll('\n', delimiters[0]);
    
    // Split by all delimiters
    List<String> parts = [normalized];
    for (String delimiter in delimiters) {
      List<String> newParts = [];
      for (String part in parts) {
        newParts.addAll(part.split(delimiter));
      }
      parts = newParts;
    }
    
    List<int> negatives = [];
    int sum = 0;
    
    for (String part in parts) {
      if (part.trim().isEmpty) continue;
      
      int num = int.parse(part.trim());
      
      if (num < 0) {
        negatives.add(num);
      }
    }
    
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }
    
    for (String part in parts) {
      if (part.trim().isEmpty) continue;
      
      int num = int.parse(part.trim());
      if (num <= 1000) {
        sum += num;
      }
    }
    
    return sum;
  }
  
  List<String> _parseDelimiters(String delimiterPart) {
    List<String> delimiters = [];
    
    if (delimiterPart.contains('[')) {
      // Handle multiple delimiters: [*][%] or single [***]
      RegExp regex = RegExp(r'\[([^\]]+)\]');
      Iterable<RegExpMatch> matches = regex.allMatches(delimiterPart);
      
      for (RegExpMatch match in matches) {
        delimiters.add(match.group(1)!);
      }
    } else {
      // Single character delimiter
      delimiters.add(delimiterPart);
    }
    
    return delimiters.isEmpty ? [','] : delimiters;
  }
}