class Dice

  @@options = [ "zacatek", "kdekoli", "vevnitr", "konec" ]
  @option

  def to_s
    @option
  end

  def initialize
    @option = @@options[ Random.rand(@@options.length) ]
  end

end
