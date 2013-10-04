require_relative '../db/config'
require_relative 'models/legislator'

#test code


#senators by state selected
def find_legislator
  puts "Enter State:"
  state = gets.chomp
  results_array = Legislator.select("firstname, lastname, title, party").where(state: state).to_a

  puts "Representatives:"
  results_array.length.times do |index|
    if results_array[index][:title] == "Rep"
      puts "#{results_array[index][:firstname]} #{results_array[index][:lastname]} - #{results_array[index][:party] }"
    end
  end

  puts
  puts "Senators:"
  results_array.length.times do |index|
    if results_array[index][:title] == "Sen"
      puts "#{results_array[index][:firstname]} #{results_array[index][:lastname]} - #{results_array[index][:party] }"
    end
  end
end

#senators by state selected




#TEST CODE
find_legislator

# def assert(st1, st2)
#   puts "Error - unexpected values" if st1 != st2
# end

