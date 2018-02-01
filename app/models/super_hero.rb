class SuperHero
  attr_accessor :name, :power, :bio
  HEROES = []

  def initialize(args)
    @name = args[:name]
    HEROES << self
  end

  def self.all
    HEROES
  end

  def self.clear
    HEROES.clear
  end
  
end
