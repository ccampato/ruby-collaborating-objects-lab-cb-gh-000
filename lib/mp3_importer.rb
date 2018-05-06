class MP3Importer
  attr_accessor :files

  def initialize(files)
    @files = files
  end

  def import(list_of_filename)
    list_of_filename.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
