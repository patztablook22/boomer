class Bomb

  def initialize (timer)

    timer.tick
    boom

  end

  def boom

    `paplay assets/boom.wav`

  end

end

