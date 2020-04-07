class Artist
  attr_accessor :name, :songs
  
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
   
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    
    
  end
  
  def songs
    Song.all.select do |song| song.artist == self
    
  end
  end
  
  def self.all
    
    @@all << @songs
  end
  
  def self.find_or_create_by_name(name)
   if self.name == name
   else 
     @@all << Artist.new(name)
     Artist.new(name)
   end
   end
  
  def print_songs
   puts self.songs
  end
  
end