class Song
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
  end

  def self.new_by_filename(filename)
    song = self.new_by_filename
    song.title = filename.split(" - ")[1]
    song.artist = filename.split(" - ")[0]
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    if (self.artist.nil?)
      self.artist.song = Artist.new(name)
    else
      self.artist.name = name
      self.artist.song 
    end
  end

end
