# frozen_string_literal: true

def get_two_min_values(data)
  data.empty? ? [] : data.sort[..1]
end
