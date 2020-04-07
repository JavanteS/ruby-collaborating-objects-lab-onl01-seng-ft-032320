class Artist
  attr_accessor :name, :songs
  
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
   
  end
  
  
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def songs
    @songs
    

  end
  
 
  
  def self.find_or_create_by_name(name)
    @@all.select do |singer| if singer.name == name 
    return singer
    
     
   else 
    return  Artist.new(name)
   end
   end
   end
  
  def print_songs
   puts self.songs
  end
  
end