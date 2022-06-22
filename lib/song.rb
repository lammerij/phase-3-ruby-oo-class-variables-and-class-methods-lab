require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@all = []
    @@genres = []
    def initialize(name, artist, genre) # the value of self is the thing its called on 
        binding.pry
        @name = name
        # @artist = artist
        self.artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        @@all << self
    end
    def self.all
        self
        @@all
    end
    def self.count
        binding.pry
        @@count 
    end 
    def self.artists
       @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
     @@genres.map.tally{|song| song.genre}
    end
    def self.artist_count
        @@artists.map.tally{|song| song.artist}
    end 
end 