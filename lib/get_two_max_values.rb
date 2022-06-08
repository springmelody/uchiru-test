# frozen_string_literal: true

def get_two_max_values(data)
  data.empty? ? [] : data.sort[-2..]
end
