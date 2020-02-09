require 'rubygems'
require 'twilio-ruby'

account_sid = "AC91cb2be6546dd912109b95f83bdb3ea1"
auth_token = "f61106ffcc371b1dfa1565f6e428fa36"

possible_answers = [
	"Hell no!",
	"A-duh!",
	"For sure!", 
	"Absolutely not, honey.", 
	"That would be nice. Wouldn't it?", 
	"Honestly, I have no idea.", 
	"I am like 99.9% sure",
	"Yeah, I don't think so..."
	]

def replied_answer(message)
	rand_number = Random.new
	rand_number = rand(0 .. 7)
	answer = message [rand_number]
end

puts "What would you like to know?"
user_question = gets.chomp

answer = replied_answer(possible_answers)

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.api.account.messages.create(
	:from => "+12244354807",
	:to => "+19853208620",
	:body => "#{answer}"
	)

puts message.to 

puts "#{answer}"