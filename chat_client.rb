require 'socket'

class SimpleChatClient

  def self.run!
    threads = []
    socket = TCPSocket.new('localhost', 13337)

    loop do
      user_input = $stdin.gets.chomp
      socket.puts(user_input)
    end



  end

end

SimpleChatClient.run!