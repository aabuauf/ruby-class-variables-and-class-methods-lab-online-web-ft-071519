class Song
 attr_reader  :name, :artist, :genre
 @@count = 0
 @@genres  = []
 @@artists  = []
  
  def initialize(name, artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres.push(genre)
    @@artists.push(artist)
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.count
    @@count
  end
  
  def self.genre_count
   hash={}
   
    @@genres.each do |element|
       if hash.key?(element)
        hash[element]= hash[element]+1
      else
        hash[element] = 1
      end
      
    end
  return hash
  end

  def self.artist_count
   hash={}
   
    @@artists.each do |element|
       if hash.key?(element)
        hash[element]= hash[element]+1
      else
        hash[element] = 1
      end
      
    end
  return hash
  end
end