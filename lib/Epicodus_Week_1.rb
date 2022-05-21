# frozen_string_literal: true

require_relative "Epicodus_Week_1/version"

module EpicodusWeek1
  class Error < StandardError; end

  # Returns list of ping-pong results
  def pingPong(count)
    (1..count).to_a.map { |num| pongToString(num) }
  end

  # Returns ping-pong result
  def pongToString(num)
    if num % 3 == 0
      if num % 5 == 0
        "ping-pong"
      else
        "ping"
      end
    elsif num % 5 == 0
      "pong"
    else
      num
    end
  end

end

module TitleCase
  def titlecase
    scan(/\S+|\s/).map { |word| word.capitalize }.join
  end
end

module LeetSpeak
  def leetspeak
    gsub('e', '3').gsub('o', '0').gsub('I', '1').gsub(/(\S{1})(s)/,'\1z').gsub(/(\S{1})(s)/,'\1z')
  end
end

module QueenAttack
  def queen_attack?(target)
    a, b = self[0].to_i - target[0].to_i, self[1].to_i - target[1].to_i
    a == 0 || b == 0 || a.abs == b.abs
  end
end

module ClockAngle
  def clock_angle
    time = split(':')
    minute = time[1].to_f * 6
    hour = (time[0].to_f * 30 + minute/12) % 360
    diff = (hour - minute).abs
    [diff, 360 - diff].min
  end
end

module MyConstants
  
  
end

module Scrabble
  SCORES = {
    "a" => 1,
    "b" => 3,
    "c" => 3,
    "d" => 2,
    "e" => 1,
    "f" => 4,
    "g" => 2,
    "h" => 4,
    "i" => 1,
    "j" => 8,
    "k" => 5,
    "l" => 1,
    "m" => 3,
    "n" => 1,
    "o" => 1,
    "p" => 3,
    "q" => 10,
    "r" => 1,
    "s" => 1,
    "t" => 1,
    "u" => 1,
    "v" => 4,
    "w" => 4,
    "x" => 8,
    "y" => 4,
    "z" => 10,
  }
  def scrabble
    split("").reduce(0) { |total, c| total + SCORES[c]}
  end
end

module NumbersToWords
  def to_words
    list = to_s.reverse.scan(/.{1,3}/).reverse
    i = list.length
    words = list.reduce([]) do |word_list, num|
      num.reverse!
      if num.length < 3
        if num.length < 2
          word_list.ones(num)
        else
          word_list.tens(num)
        end
      else
        word_list.hundreds(num[0])
        word_list.tens(num[1..2])
      end
      if num != "000" && i > 1
        word_list.suffix(i)
        i -= 1
      end
      word_list
    end
    words.join(" ").rstrip.chomp(',')
  end

end

module NumbersToWordsArrayExtension
  ONES = {
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine"
  }
  TENS = {
    "2" => "twenty",
    "3" => "thirty",
    "4" => "forty",
    "5" => "fifty",
    "6" => "sixty",
    "7" => "seventy",
    "8" => "eighty",
    "9" => "ninety"
  }
  TEENS = {
    "10" => "ten",
    "11" => "eleven",
    "12" => "twelve",
    "13" => "thirteen",
    "14" => "fourteen",
    "15" => "fifteen",
    "16" => "sixteen",
    "17" => "seventeen",
    "18" => "eighteen",
    "19" => "nineteen",
  }
  SUFFIX = {
    2 => "thousand,",
    3 => "million,",
    4 => "billion,",
    5 => "trillion,",
  }

  def hundreds(num)
    push(ONES[num[0]] + " hundred") if num[0] != "0"
  end

  def tens(num)
    if !["0", "1"].include?(num[0])
      push(TENS[num[0]])
      ones(num[1])
    elsif num[0] == "1"
      push(TEENS[num])
    end
  end

  def ones(num)
    if num != "0"
      push(ONES[num])
    end
  end

  def suffix(num)
    SUFFIX[num] ? push(SUFFIX[num]) : push("gazilion,")
  end
end

class String
  include TitleCase
  include LeetSpeak
  include ClockAngle
  include Scrabble
end

class Array
  include QueenAttack
  include NumbersToWordsArrayExtension
end

class Integer
  include NumbersToWords
end