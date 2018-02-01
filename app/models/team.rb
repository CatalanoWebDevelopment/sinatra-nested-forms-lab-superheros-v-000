class Team
  attr_accessor :name, :motto
  TEAMS = []

  def initialize(args)
    TEAMS << self
  end

  def self.all
    TEAMS
  end

  def self.clear
    TEAMS.clear
  end
end
