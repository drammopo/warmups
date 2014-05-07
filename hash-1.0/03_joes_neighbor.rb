require_relative 'people'

# What is the last name of the person sitting next to joe?
#
# HINT: Start by finding who joe is sitting next to, then find that person in the hash.
joe_neighbour = PEOPLE["joe"][:sitting_next_to].to_s
puts "The last name of Joe\'s neighbour is #{PEOPLE[joe_neighbour][:last_name]}"

sue_neighbour = PEOPLE["sue"][:sitting_next_to].to_s
puts "The last name of Sue\'s neighbour is #{PEOPLE[sue_neighbour][:last_name]}"
