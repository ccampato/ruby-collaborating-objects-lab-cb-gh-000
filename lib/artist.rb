require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song_name)
    @songs << song_name
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)

    def self.create_by_name(name)
      artist = self.new(name)
      artist.save
      artist
    end

    def self.find_by_name(name)
      self.all.detect { |artist| artist.name = name }
    end

    self.find_by_name(name) or self.create_by_name(name)
  end

  def print_songs
    self.songs
  end

end
