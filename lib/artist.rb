require 'pry'
class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name= name
    @songs = []
    @@all << name
  end

  def self.all
    @@all << @name
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)

    def self.create_by_name(name)
      name = self.new(name)

      self.name
    end

    def self.find_by_name(name)
      self.all.detect { |name| self.name }
    end

    if self.find_by_name.includes?(name)
      name = self.find_by_name(name)
      self.name
    else
      name = self.create_by_name.includes?(name)
      self.name
    end
  end

  def print_songs
    self.songs
  end

end
