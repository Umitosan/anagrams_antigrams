# Anagrams and Antigrams

#### For Epicodus code review -  04/21/17

#### by **_Dominic Brown_**

## Description

This web application checks a user's words to determine if they are an anagram, antigram, or palindrome.

## Specifications

| Behavior | Input | Output |
|----------|-------|--------|
| The program will verify the user's input is a valid word by checking the presence of vowel and notify the user if not valid | "qwrt" | "I don't think those are all real words you silly mongoose... try again!" |
| The program will verify that two words are anagrams  | "listen", "silent" | "Cool, your words are an anagram!" |
| The program will ignore letter case | "Team", "Meat" | "Cool, your words are anagrams!" |
| The Program will ignore spaces and punctuation | "Hamlet?", "Am leth!" | "Cool, your words are anagrams!" |
| After verifying two words are in fact anagrams, the program will check that if the words are a palindrome | "Top", "spot" | "Guess what, your words together form a palindrome!" |
| The program will check to see if the user's input is an "antigram", if not already found to be an anagram, by verifying that all letters in each word are different than the letters in each other word | "mango", "butter" | "Woah, your 2 words are antigrams!" |
| The program will also perform these verify anagram and antigram conditions for multiple words as input | "Punishments", "Nine Thumps" | "That's an impressive anagram!" |

## Setup/Installation Requirements

* Open the scrabble.rb file to check the code.

## Known Bugs

There are no known bugs as of now, but surly the code is far from perfect.

## Support and contact details

* My github: https://github.com/Umitosan

## Technologies Used
* Git
* Html
* CSS
* Bootstrap
* Ruby
* Sinatra

### License

MIT

Copyright (c) 2017 **_{Dominic Brown}_**
