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

## Run Tests
```bash
dart pub get
dart test
```