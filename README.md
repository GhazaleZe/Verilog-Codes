# Verilog Codes

## main explanation:
 It's better to have a separate test module for Verilog codes, hence  "top modules" are for testing "main modules". 
 ### ALU:
This module defined at a behavioral level. 
The ALU handles 4 operations. It has 2 inputs and 1 output.
Each input is 5 bits . The output is 6 bits. Select is a signal that chooses operations.
### MUX
The module defined at a gate level. 
This is a Quad 2-Input Multiplexer with the below function table:
| Storbe(input) | Select(input) | A(input) | B(input) | Y(output)|
| ------ | ------ | ------ | ----- | -----|
|H| X | X | X | L|
| L | L | L | X | L|
| L| L | H | X | H|
| L| H | X | L | L|
|  L| H | X | H | H|

H = HIGH Level
L = LOW Level
X = Irrelevan

The delay for gates are in the below table :
| Gate | Delay|
| ------ | ------ |
| OR | 4 |
| AND | 3 |
| NOT | 2 |

### Shift Register:
This is an 8 bits shift register with inputs: clk, load, right.
when "load" actives, it initialize with zero.
when "right" is an active-high, it shifts one bit to the right. On the other hand, when "right" is an active-low, it shifts one bit to the left.
> Note: Do not use Verilog's shift operations.


