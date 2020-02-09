require 'socket'

server = 'karatkievich.freenode.net'
port = 6667
socket = TCPSocket.open(server, port)

nickname = 'MyRubyBot'
channel = 'realhousewives4eva'

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"
socket.puts "PRIVMSG #{channel} :I am so happy to be here!"

while message = socket.gets do
	puts message

	if message.match('^PING :')
		server = message.split(':').last
		puts "PONG #{server}"
		socket.puts "PONG #{server}"
	elsif message.match('How are you?')
		puts "PRIVMSG #{channel} :I'm great, thanks!"
			
	end
end
