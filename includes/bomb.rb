class Bomb

  def initialize (timer)

    timer.tick
    boom

  end

  def boom

    `#{ $wavPlayer } assets/boom.wav`

  end

end

