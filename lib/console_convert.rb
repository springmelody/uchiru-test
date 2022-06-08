# frozen_string_literal: true

require_relative 'convert_celsius_to_fahrenheit'

def console_convert
  puts 'Enter degrees in celsius: '
  answer = gets.chomp
  boolean_answer = answer.match?(/^\d*$/)
  return if answer == 'exit'

  if boolean_answer
    puts "#{convert_celsius_to_fahrenheit(answer.to_i)} fahrenheit"
  else
    puts "#{answer} not a number!"
    console_convert
  end
end

console_convert
