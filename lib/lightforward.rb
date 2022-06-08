# frozen_string_literal: true

def lightforward(color)
  mapping = { red: 'стоять', green: 'идти', yellow: 'ждать' }
  [mapping.keys.map(&:to_s), mapping[color.to_sym]]
end
