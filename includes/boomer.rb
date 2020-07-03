#! /usr/bin/ruby

require_relative 'includes/timer'
require_relative 'includes/bomb'
require_relative 'includes/dice'
require_relative 'includes/stack'
require_relative 'includes/prompt'

prompt  = Prompt.new
dice    = Dice.new
stack   = Stack.new
over   = false

begin

  prompt.proceed {
    if over
      puts "GAME OVER, BOOMER!"
    else
      puts "HELLO, BOOMER!"
    end
    puts
    puts "START GAME <<<"
  }

  currentCard = nil
  currentDice = nil

  prompt.proceed(true) {
    puts " karta: #{currentCard = stack.spawn} <<<"
    puts "kostka:"
    puts
  }

  prompt.proceed(true) {
    puts " karta: #{currentCard}"
    puts "kostka: #{currentDice = dice.roll} <<<"
    puts
  }

  prompt.proceed {
    puts " karta: #{currentCard}"
    puts "kostka: #{currentDice}"
    puts "START?! <<<"
  }

  timer = Timer.new(40, 80)
  Bomb.new(timer)
  over = true

end while true
