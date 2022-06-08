# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/get_two_max_values'

class GetTwoMaxValuesTest < Minitest::Test
  def test_get_same_parity
    assert { get_two_max_values([]) == [] }
    assert { get_two_max_values([1, 2, 12, 34, 35, 6, 0]) == [34, 35] }
  end
end
