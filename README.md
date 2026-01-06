# String Calculator TDD Kata

TDD implementation of String Calculator following RED-GREEN-REFACTOR cycles.

## Requirements
- Empty string returns 0
- Single number returns itself  
- Multiple comma-separated numbers return sum
- Handle newlines as delimiters
- Support custom delimiters
- Throw exception for negative numbers
- Ignore numbers > 1000
- Support multi-character delimiters

## TDD Process

### Step 1: Empty String Returns 0
**RED**: ![Step 1 RED](screenshots/step1_red_empty_string.png)
**GREEN**: ![Step 1 GREEN](screenshots/step1_green_empty_string.png)

### Step 2: Single Number Returns Itself
**RED**: ![Step 2 RED](screenshots/step2_red_single_number.png)
**GREEN**: ![Step 2 GREEN](screenshots/step2_green_single_number.png)

### Step 3: Two Numbers Return Sum
**RED**: ![Step 3 RED](screenshots/step3_red_two_numbers.png)
**GREEN**: ![Step 3 GREEN](screenshots/step3_green_two_numbers.png)

### Step 4: Multiple Numbers Return Sum
**RED**: ![Step 4 RED](screenshots/step4_red_multiple_numbers.png)
**GREEN**: ![Step 4 GREEN](screenshots/step4_green_multiple_numbers.png)

### Step 5: Newlines Work as Delimiters
**RED**: ![Step 5 RED](screenshots/step5_red_newlines.png)
**GREEN**: ![Step 5 GREEN](screenshots/step5_green_newlines.png)

### Step 6: Custom Delimiters Work
**RED**: ![Step 6 RED](screenshots/step6_red_custom_delimiters.png)
**GREEN**: ![Step 6 GREEN](screenshots/step6_green_custom_delimiters.png)

### Step 7: Negative Numbers Throw Exception
**RED**: ![Step 7 RED](screenshots/step7_red_negative_numbers.png)
**GREEN**: ![Step 7 GREEN](screenshots/step7_green_negative_numbers.png)

### Step 8: Multiple Negative Numbers in Exception
**GREEN**: ![Step 8 GREEN](screenshots/step8_green_multiple_negatives.png) *(Already works!)*

### Step 9: Numbers Greater Than 1000 Are Ignored
**RED**: ![Step 9 RED](screenshots/step9_red_ignore_1000.png)
**GREEN**: ![Step 9 GREEN](screenshots/step9_green_ignore_1000.png)

### Step 10: Multi-character Delimiters Work
**RED**: ![Step 10 RED](screenshots/step10_red_multichar_delimiters.png)
**GREEN**: ![Step 10 GREEN](screenshots/step10_green_multichar_delimiters.png)

## 🎉 Final Results
**All Tests Passing**: ![Final Tests](screenshots/final_all_tests_pass.png)
**Complete TDD Journey**: ![Commit History](screenshots/commit_history_tdd.png)

## Run Tests
```bash
dart pub get
dart test
```