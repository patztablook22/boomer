class Stack

  @vowels
  @consonants
  @lettres

  def initialize

    @vowels     =  ['a', 'e', 'i', 'o', 'u', 'y']
    @consonants =  ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm',
                    'n', 'p' 'r', 's', 't', 'v', 'z']
    @lettres = [ @vowels, @consonants ]

  end

  def spawn

    len = Random.rand(2..3)
    str = ""

    iter = Random.rand( @lettres.length )

    while str.length < len

      opts = @lettres[iter].length
      str += @lettres[iter][ Random.rand(opts) ]

      iter += 1
      iter %= 2

    end

    return str

  end

end
