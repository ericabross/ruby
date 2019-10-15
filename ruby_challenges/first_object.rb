class Character
	def set_name=(character_name)
		@name = character_name
	end

	def get_name
		return @name
	end

	def set_friend=(friend_name)
		@friend_name = friend_name
	end

	def get_friend
		return @friend_name
	end
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
my_character.set_name= "Eleanor"
character_name = my_character.get_name
puts "#{character_name} says #{my_character.catchphrase}"

my_character = Friends.new
my_character.set_name= "Ross"
character_name = my_character.get_name
puts "#{character_name} says #{my_character.catchphrase}"

my_character = Himym.new
my_character.set_name= "Barney"
character_name = my_character.get_name
puts "#{character_name} says #{my_character.catchphrase}"

puts my_character.inspect
