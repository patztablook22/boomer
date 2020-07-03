module Prompt

  def self.proceed (emptyForNo = false)

    while true
      puts `clear`
      puts 
      yield
      puts 
      puts "moznosti:"
      if emptyForNo
        puts "[ENTER] -> zkusit znovu"
      end
      puts "    q/Q -> ukoncit hru"
      puts "  jinak -> pokracovat"
      unless emptyForNo
        puts
      end
      puts
      print "vstup> "
      buf = gets

      if buf.nil?
        buf = ""
      end
      buf = buf[0..-2]

      case buf
      when "q", "Q"
        puts "exitting..."
        exit 0
      when ""
        if emptyForNo
          next
        end
      end

      return

    end

  end

end
