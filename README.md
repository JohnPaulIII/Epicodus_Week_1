# Epicodus (Week 1)

This repository currently contains all the code snippets I made while working through the first week of Epicodus Ruby and Rails.

## Installation

Download the repo and run:

    $ bundle install

in the main folder.

## Navigation

All of the functions are housed in /lib/Epicodus_Week_1.rb, and all tests are housed in /test/test_Epicodus_Week_1.rb.  The tests can be verified by running:

    $ rake

in the main folder.  Also included is a collection of script files located in /lib/Executables.  These scripts all correspond with the different functions I built, and allow for quick testing of each function.  Their usage and function are described below:

## Script Files

### Allergies

    $ ./allergies 123
    >> [eggs, shellfish, chocolate, pollen]

Given a number from 1-255, it generates a unique list of up to 8 different allergens.

### Clock Angle

    $ ./clock-angle 7:15
    >> 127.5

Given a time in the form HH:MM, it returns the smallest angle (in degrees) between the hour and minute hands.

### Coin Combinations

    $ ./coin-combinations 268
    >> 10 quarters, 1 dime, 1 nickel, 3 pennies

Given an amount of cents, it returns the smallest number of coins required to match the input.

### Find and Replace

    $ ./find-and-replace "I am walking my cat to the cathedral" cat dog
    >> I am walking my dog to the cathedral

Given an initial string of words, a word to search for, and a word to replace with, it returns a corrected string where all independent instances of the search term are replaced.  To reference the above example, the word cat is replaced, while the cat portion in the word cathedral is ignored.

### Leetspeak

    $ ./leetspeak "Where all hope is lost"
    >> Wh3r3 all h0p3 iz l0zt

Given a string, it converts it to leetspeak.  Specifically, E/e to 3, O/o to 0, I to 1, and any s not at the beginning of a word to z.

### Numbers to Words

    $ ./numbers-to-words 123456
    >> one hundred twenty three thousand, four hundred fifty six

Given a number, it will return the written form of that number.  Currently, the function can only count to just shy of 1 quadrillion accurately.

### Palindrome

    $ ./palindrome Racecar
    >> true

Will evaluate if the given string/number is a valid palindrome.  It will ignore all extraneous characters.

### Ping Pong

    $ ./ping-pong 20
    >> [1, 2, ping, 4, pong...14, ping-pong, 16]

Returns a list running from 1 to the given number, but replaces multiples of 3 and 5 with ping and pong, respectively.

### Prime Sift

    $ ./prime-sift 100
    >> [2, 3, 5...83, 89, 97]

Returns a list of prime numbers up to the given number.

### Queen Attack

    $ ./queen-attack [1,1] [1,3]
    >> true

Given a pair of coordinates, it evaluates whether a chess queen could legally move between the 2 points.

### Rock, Paper, Scissors

    $ ./rock-paper-scissors Rock paper
    >> false

Given a pair of valid moves, it evaluates whether you (as the first move) beat your opponent.

### Scrabble

    $ ./scrabble Eureka
    >> 10

Returns the scrabble score for a given string.

### Title Case

    $ ./titlecase "All fOr onE"
    >> All For One

Given a string of words, it will return a corrected string with all words properly capitalized.
