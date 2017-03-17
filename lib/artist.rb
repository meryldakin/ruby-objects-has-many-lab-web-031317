class Artist
  #class variables and methods
  @@song_count = 0

  def self.song_count
    @@song_count
  end

  #instance variables and methods



  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []

  end

  def songs
    @songs

  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    self.add_song(song)
  end




end
