class Dice

  @options

  def initialize
    @options = [ "zacatek", "kdekoli", "vevnitr", "konec" ]
  end

  def roll
    return @options[ Random.rand(@options.length) ]
  end

end
