class Prompt

  def proceed (emptyForNo = false)

    while true
      puts `clear`
      puts 
      yield
      puts 
      puts "moznosti:"
      puts "[ENTER] -> zkusit znovu"
      puts "    q/Q -> ukoncit hru"
      puts "  jinak -> pokracovat"
      puts
      print "vstup> "
      buf = gets
      buf = buf[0..-2]

      case buf
      when "q", "Q"
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
