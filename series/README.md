# Series

Welcome to Series on Exercism's Ruby Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Given a string of digits, output all the contiguous substrings of length `n` in that string in the order that they appear.

For example, the string "49142" has the following 3-digit series:

- "491"
- "914"
- "142"

And the following 4-digit series:

- "4914"
- "9142"

And if you ask for a 6-digit series from a 5-digit string, you deserve whatever you get.

Note that these series are only required to occupy _adjacent positions_ in the input;
the digits need not be _numerically consecutive_.

## Implementation

In this exercise you're practicing iterating over an array, meaning: executing an operation on each element of an array.
Ruby has many useful built-in methods for iterations.
Take a look at [this article][how-to-iterate].

Most of the methods listed in the article are not methods specifically for Array, but come from [Enumerable][Enumerable].
The article doesn't list iterating over _consecutive elements_.
The first challenge is to find a method that does.

[Enumerable]: https://docs.ruby-lang.org/en/master/Enumerable.html
[how-to-iterate]: http://jeromedalbert.com/ruby-how-to-iterate-the-right-way/

## Source

### Created by

- @kytrinyx

### Contributed to by

- @budmc29
- @emcoding
- @hilary
- @iHiD
- @Insti
- @jeporcher
- @kotp
- @mikegehard
- @pgaspar
- @stevensonmt
- @tryantwit

### Based on

A subset of the Problem 8 at Project Euler - https://projecteuler.net/problem=8