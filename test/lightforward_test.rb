# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/lightforward'

class LightforwardTest < Minitest::Test
  def test_lightforward
    assert { lightforward('red') == [%w[red green yellow], 'стоять'] }
    assert { lightforward('green') == [%w[red green yellow], 'идти'] }
    assert { lightforward('yellow') == [%w[red green yellow], 'ждать'] }
    assert { lightforward('tomato') == [%w[red green yellow], nil] }
  end
end
