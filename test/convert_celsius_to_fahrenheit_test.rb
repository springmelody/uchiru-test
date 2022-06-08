# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/convert_celsius_to_fahrenheit'

class ConvertCelsiusToFahrenheitTest < Minitest::Test
  def test_convert_c_to_f
    assert { convert_celsius_to_fahrenheit(0) == 32 }
    assert { convert_celsius_to_fahrenheit(50) == 122 }
    assert { convert_celsius_to_fahrenheit(-15) == 5 }
  end
end
