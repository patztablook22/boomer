module Letters

  @list = [
    
    # vowels
    
    {
      'a' => 100,
      'e' => 100,
      'i' => 100,
      'o' =>  90,
      'u' =>  80,
      'y' =>  70,
    },

    # consonants

    {
      'b' =>  70,
      'c' =>  80,
      'd' =>  90,
      'f' =>  50,
      'g' =>  50,
      'h' =>  80,
      'j' =>  80,
      'k' =>  90,
      'l' =>  90,
      'm' =>  80,
      'n' =>  90,
      'p' =>  90,
      'q' =>  5,
      'r' =>  90,
      's' =>  90,
      't' =>  90,
      'v' =>  90,
      'w' =>  5,
      'x' =>  10,
      'z' =>  80,
    },

  ]

  @sum = [
    0, # vowels
    0, # consonants
  ]

  def self.init

    for i in 0..1

      @list[i].each_value do |val|
        @sum[i] += val
      end

    end

  end

  def self.get(sink)

    r = Random.rand(@sum[sink])

    @list[sink].each do |key, val|
      r -= val
      if r < 0
        return [key, val]
      end
    end

  end

end
