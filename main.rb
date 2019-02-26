#!/usr/bin/env ruby

require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?
  Duck types are public interfaces that are not tied to any specific class, they replace the costly dependecies
  on class with forgiving dependecies on messages. This has to do with polymorphism (having many forms)
  because duck types can take many forms as they are dynamically typed, and are interchangable from the
  sender's point of view.
2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?
   The three main code smells that Metz talks about are case statements that switch on class,
   "kind_of?" and "is_a?" statements, and "responds_to?"
3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.
   True, it may seem like it is not at first, but Metz explains that we can more easily understand the duck
   type because we can infer (without getting into trouble) the type of the duck, and we cannot be wrong
   so long as the duck type was built correctly.
=end
