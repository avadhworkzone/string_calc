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

## Run Tests
```bash
dart pub get
dart test
```