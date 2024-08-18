# calculator.sh
#!/bin/bash

# Function to perform addition
add() {
  echo "Result: $(($1 + $2))"
}

# Function to perform subtraction
subtract() {
  echo "Result: $(($1 - $2))"
}

# Function to perform multiplication
multiply() {
  echo "Result: $(($1 * $2))"
}

# Function to perform division
divide() {
  if [ $2 -eq 0 ]; then
    echo "Error: Division by zero"
  else
    echo "Result: $(($1 / $2))"
  fi
}

# Main script
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2

echo "Choose operation: 1) Add 2) Subtract 3) Multiply 4) Divide"
read operation

case $operation in
  1)
    add $num1 $num2
    ;;
  2)
    subtract $num1 $num2
    ;;
  3)
    multiply $num1 $num2
    ;;
  4)
    divide $num1 $num2
    ;;
  *)
    echo "Invalid operation"
    ;;
esac
