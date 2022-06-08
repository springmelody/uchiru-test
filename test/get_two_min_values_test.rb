# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/get_two_min_values'

class GetTwoMinValuesTest < Minitest::Test
  def test_get_same_parity
    assert { get_two_min_values([]) == [] }
    assert { get_two_min_values([1, 2, 12, 34, 35, 6, 0]) == [0, 1] }
  end
end
