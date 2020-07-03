class Bomb

  def initialize (timer)

    timer.tick
    boom

  end

  def boom
  
    print "\nbum... "
    `#{ $wavPlayer } assets/boom.wav`

  end

end

