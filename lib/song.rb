require "pry"
class Song
  attr_accessor :name, :artist
  
  @@all=[]
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def self.new_by_filename(filename)
     
   singer = filename.split(" - ")[0]
   song_name = filename.split(" - ")[1]
   song = self.new(song_name)
   artist = Artist.find_or_create_by_name(singer)
    
   
  
   song
  end
  
  def artist_name=(name)
 self.artist = Artist.find_or_create_by_name(name)
  end
  


end