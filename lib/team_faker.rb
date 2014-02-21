require "ffaker"

module Faker
  module Team
    extend ModuleUtils
    extend self

    def name
      case rand(9)
      when 0 then "#{color} #{animal}"
      when 1 then "#{adjective} #{animal}"
      when 2 then "#{adjective} #{color} #{animal}"
      when 3 then "#{color} #{other}"
      when 4 then "#{adjective} #{other}"
      when 5 then "#{adjective} #{color} #{other}"        
      when 7 then "#{color} #{disaster}"
      when 6 then "#{adjective} #{disaster}"
      when 7 then "#{color} #{weapon}"
      when 8 then "#{adjective} #{weapon}"
      end
    end

    private
    def color
      COLORS.sample
    end

    def animal
      ANIMALS.sample
    end

    def disaster
      DISASTERS.sample
    end

    def weapon
      WEAPONS.sample
    end

    def other
      OTHER.sample
    end

    def adjective
      ADJECTIVES.sample
    end

    COLORS = k %w[Red Black Silver Magenta Green Blue White Fuschia] unless const_defined? :COLORS
    ADJECTIVES = k %w[Angry Awesome Mighty Atomic Screaming Scorching Slick Big Giant Speedy Red\ Hot Lil' Rockin' Extreme] unless const_defined? :ADJECTIVES
    ANIMALS = k %w[Hawks Honeybadgers Mantis\ Shrimps Anteaters Panthers Wolves Lions Eagles Wolverines Gators Scorpions Monkeys Weasels] unless const_defined? :ANIMALS
    DISASTERS = k %w[Tornados Hurricanes Lightning Thunder Backdraft Fire Firestorms Flames] unless const_defined? :DISASTERS
    WEAPONS = k %w[Bazookas Machetes Machine\ Guns Daggers Rockets] unless const_defined? :WEAPONS
    OTHER = k %w[Slayers Bombers Demons Angels X-treme Maniacs Annihilators Rage Bruisers] unless const_defined? :OTHER
    
  end
end
