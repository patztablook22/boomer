class Card

  @@modes = [
    [0, 1, 0],
    [1, 0, 1],
    [1, 1, 0],
  ]

  @sontent
  @invSum

  def to_s
    @content
  end

  def initialize
    
    @content = ''
    @invSum = 0

    mode = @@modes[Random.rand(2)]
    
    for i in 0..2

      r = Letters.get(mode[i])
      @content += r[0]
      @invSum += 100.0 / r[1]

      if @invSum > 2.2
        break
      end

    end
    
  end

end
