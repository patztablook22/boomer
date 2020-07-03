class Timer

  @times

  def initialize (min, max)

    @times = Random.rand (min..max)
  
  end

  def tick

    for i in 0..@times
      `#{ $wavPlayer } assets/tick.wav`
    end

  end

end
