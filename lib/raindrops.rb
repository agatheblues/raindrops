require_relative "./raindrops/drop_generator"

# CHANGE TOTAL NUMBER TO GENERATE MORE DROPS!
total_numbers = 150
numbers = (1..total_numbers).to_a

puts "Generating #{total_numbers} raindrops...\n\n"
numbers.each {|x| puts "#{x}: #{DropGenerator.convert(x)}"}