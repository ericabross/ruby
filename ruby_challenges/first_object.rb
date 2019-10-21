class Character
	
	attr_accessor :name, :friend_name

end

class Goodplace < Character
	def catchphrase
		return "Ya Basic"
	end
end

class Friends < Character
	def catchphrase
		return "We were on a break!"
	end
end

class Himym < Character
	def catchphrase
		return "It's going to be legend-waitforit-DARY!"
	end
end

my_character = Goodplace.new
my_character.name= "Eleanor"
character_name = my_character.name
puts "#{character_name} says #{my_character.catchphrase}"

my_character = Friends.new
my_character.name= "Ross"
character_name = my_character.name
puts "#{character_name} says #{my_character.catchphrase}"

my_character = Himym.new
my_character.name= "Barney"
character_name = my_character.name
puts "#{character_name} says #{my_character.catchphrase}"

puts my_character.inspect
