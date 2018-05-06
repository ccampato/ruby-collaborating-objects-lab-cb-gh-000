require 'pry'
class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all << self
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
      self.name = Artist.new(name)
      self.save
      self.name
    end

    def self.find_by_name(name)
      self.all.detect { |name| Artist.name }
    end

    self.find_or_create_by_name(name)
  end

  def print_songs
    self.songs
  end

end
