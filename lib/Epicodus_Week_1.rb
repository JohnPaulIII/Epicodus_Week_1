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

class String
  include TitleCase
  include LeetSpeak
  include ClockAngle
end

class Array
  include QueenAttack
end