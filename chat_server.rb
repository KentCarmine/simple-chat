require 'socket'

class SimpleChatServer

  def self.run!
    threads = []
    server = TCPServer.new(13337)
    loop do
      threads << Thread.new do  |client=server.accept|

        loop do
          message = client.gets
          puts message
        end

      end

    end

  end

end

SimpleChatServer.run!