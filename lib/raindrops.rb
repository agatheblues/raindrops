require_relative "./raindrops/drop_generator"

total_numbers = 130
numbers = (1..total_numbers).to_a

puts "Generating #{total_numbers} raindrops...\n\n"
numbers.each {|x| puts "#{x}: #{DropGenerator.convert(x)}"}