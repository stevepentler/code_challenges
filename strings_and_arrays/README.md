
# Strings and Arrays
A collection of exercises involving strings and arrays.

## String Compression - compress_test.rb

Implement a method to perform basic string compression using the counts of
repeated characters. For example, the string aabcccccaaa would become
a2b1c5a3. If the "compressed" string would not become smaller than the original
string, your method should return the original string.


## Space Replacer - replace_test.rb

Write a method that will replace all spaces in a string with '%20'. This method
will not replace any trailing spaces with %20.


## Matrix Rotator - rotator_test.rb

Write a method that will take an NxN matrix of numbers and rotate it 90 degrees
clockwise.


## Chunker - chunker_test.rb

We are working with a piece of hardware that can only accept inputs in small amounts. You want to send strings to it in five character chunks.

Create a method that when given a lengthy string, will break it up into an array where each element consists of a string of five characters.

**DO NOT USE ENUMERABLES**


## Vigenere Cipher - vigenere_test.rb

Write a method that encrypts text using Vigenere's cipher. The method will take two strings as arguments, the plaintext and the key. The cipher works as follows. Each letter will be changed according to the corresponding value in the key.

For the key, each letter represented by a numerical value. "a" is 1, "b" is 2, "c" is three and so forth.

So given the text "foobar" and the key "abc", the result will be "gqrccu"

"f" is the first element, and so "a" or 1 is added to it, giving us "g."
For "o" the corresponding position in the key is "b" or two, so we get, "q"
After the third position, we wrap around the key and "b" gets "a" added to it,
giving us the value "c".
