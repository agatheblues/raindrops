require_relative "./raindrops/drop_generator"

numbers = (1..130).to_a
numbers.each {|x| puts "#{x}: #{DropGenerator.convert(x)}"}