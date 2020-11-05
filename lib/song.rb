
class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)

        @@count += 1
        @@genres << genre
        @@artists << artist
        @name = name
        @artist = artist
        @genre = genre

    end 

    def self.count
        @@count 

    end 

    def self.genres

        @@genres.uniq
    end 

    def self.artists

        @@artists.uniq

    end 

    def self.genre_count #review this

        hash = {}

    @@genres.each do |genre|
        hash[genre] ||= 0
        hash[genre] += 1

    end 

    hash 

    end 

    def self.artist_count

        hash = {}

        @@artists.each do |artist| 
            hash[artist] ||= 0 #why do we need to set this to 0? 
            hash[artist] += 1
        end 

        hash 
    end 

end 