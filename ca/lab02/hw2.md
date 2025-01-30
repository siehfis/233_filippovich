# Homework 2

## Task 1
6-bit binary numbers means that we have:

$2^5$ | $2^4$ | $2^3$ | $2^2$ | $2^1$ |  $2^0$

So when numbers are $unsigned$:

1) 0 -> 000000
2) 13 -> 001101 (8 + 4 + 1)
3) 24 -> 011000 (16+8)
4) 63 -> 111111 (32 + 16 + 8 + 4 + 2 + 1)

When numbers are $signed$ it means $2^5$ has "-":

1. 16 -> 010000 
2. -2 -> 111110 (-32 + 16 + 8 + 4 + 2)
3. 31 -> 011111 (16 + 8 + 4 + 2 + 1)
4. -32 -> 100000

## Task 2

000101 -> 5 (the oldest is 0 so there's only one way)

101011:
1. Unsigned -> 43 (32 + 8 + 2 + 1)
2. Signed -> -21 (-32 + 8 + 2+ 1)

111111:
1. Unsigned -> 63 (32 + 16 + 8 + 4 + 2 + 1)
1. Signed -> -1 (-32 + 16 + 8 + 4 + 2 + 1) 
100000:
1. Unsigned -> 32
2. Signed -> -32

## Task 3

$16^1$ | $16^0$

0x means that we have hexadecimal numbers.
Numbers 0 - 9 equals to themselves, 10-15  equals to A-F respectively.

1. 7 -> 0x07 
2. 240 -> 0xF0 (15 * 16)
3. 171 -> 0xAB (10 * 16 + 11)
4. 126 -> 0x7E (7 * 16 + 14)

## Task 4
8-bit binary:

$2^7$ | $2^6$ | $2^5$ | $2^4$ |  $2^3$  | $2^2$ | $2^1$ | $2^0$

1. 0x3C -> 60 -> 00111100 (32 + 16 + 8 + 4)
2. 0x7E -> 126 -> 01111110 (64 + 32 + 16 + 8 + 4 + 2)
3. 0xFF -> 255 -> 11111111 (128+64 + 32 + 16 + 8 + 4 + 2 + 1)
4. 0xA5 -> 165 -> 10100101 (128 + 32 + 4 + 1)
ап
## Task 5

We want to *number_from_previous_task* + *answer* = 00000000

Let's do it with invertion:

1. 00111100 -> 11000011 (inverse) -> 11000100 (+ 00000001)

Negation: 11000100

2. 01111110 -> 10000001 (inverse) -> 10000010 (+ 00000001)

Negation: 10000010

3. 11111110 -> 00000001 (inverse) -> 00000010
Negation: 00000010

4. 10100101 -> 01011010 (inverse) -> 01011011
Negation: 01011011

## Task 6

0xDEADBEEF

for Big-Endian convention

$DE$ | $AD$ | $BE$ | $EF$ 

$2^3$ | $2^2$ | $2^1$ |  $2^0$

for Little-Endian convention

$EF$ | $BE$ | $AD$ | $DE$ 

$2^3$ | $2^2$ | $2^1$ |  $2^0$

## Task 7

Values: 7, 15, -16, -5 

5-bit binary:

$2^4$ | $2^3$ | $2^2$ | $2^1$ |  $2^0$

7 -> 00111 zero-extended: 00000111; sign-extended: 00000111.

15 -> 01111 zero-extended: 00001111; sign-extended: 00000111.

-16 -> 10000 zero-extended: 00010000; sign-extended: 11110000.

-5 -> 11011 zero-extended: 00011011; sign-extended: 11111011.

## Task 8

unsigned:

7 -> 0111
9 -> 1001

0111 + 1001 = 0000 in 4-bit binary

1 won't appear as we have 4-bit world

signed:

4 -> 0100
-5 -> 1011
0100 + 1011 = 1111


