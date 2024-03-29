require './refacut-dict.rb'

# create a mapping of state to abbreviation
states = Dict.new
Dict.set(states, 'Oregon', 'OR')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'California', 'CA')
Dict.set(states, 'New York', 'NY')
Dict.set(states, 'Michigan', 'MI')

# create a basic set of states and some cities in them
cities = Dict.new()
Dict.set(cities, 'CA', 'San Francisco')
Dict.set(cities, 'MI', 'Detroit')
Dict.set(cities, 'FL', 'Jacksonville')

# add some more cities
Dict.set(cities, 'NY', 'New York')
Dict.set(cities, 'PR', 'Portland')

#Dict.hash_key(states, 'Portland')

#print states.class

#=begin

# puts out some cities
puts '-' * 10
puts "NY State has: #{Dict.get(cities, 'NY')}"
puts "OR State has: #{Dict.get(cities, 'OR')}"

 
# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{Dict.get(states, 'Michigan')}"
puts "Florida's abbreviation is: #{Dict.get(states, 'Florida')}"

# puts every state abbreviation
puts '-' * 10
Dict.list(states)

# puts every city in state
puts '-' * 10
Dict.list(cities)

puts '-' * 10
# by default ruby says "nil" when someting isn't in there
state = Dict.get(states, 'Texas')

if !state 
	puts "Sorry, no Texas."
end

# default values using //= with the nil result 
city = Dict.get(cities, 'TX', 'Does not exist')
puts "The city for the state 'TX' is #{city}"

puts Dict.get(states, 'Michigan')#.class

# puts states.class
# puts cities.class




