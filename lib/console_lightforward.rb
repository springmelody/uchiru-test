# frozen_string_literal: true

require_relative 'lightforward'

def console_lightforward
  puts 'Введите цвет светофора: '
  answer = gets.chomp
  key_colors, action = lightforward(answer)
  return if answer == 'exit'

  if key_colors.include?(answer)
    puts "Светофор говорит: #{action}!"
  else
    puts "Введите один из этих цветов: '#{key_colors.join(', ')}'"
    console_lightforward
  end
end

console_lightforward
