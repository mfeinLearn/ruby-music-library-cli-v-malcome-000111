require 'pry'
class Song
  extend Findable # Take all of the methods in the Findable module and add them
  # as class methods
  extend Nameable::ClassMethods
  extend Persistable::ClassMethods
  include Persistable::InstanceMethods
  attr_accessor :name, :artist
  attr_reader :genre


  def self.all # Class Reader
    @@all
  end

  def genre=(genre)
    # this creates a belongs to
    # First be a nice object and
    # tell the genre that it has a new song, me.
    genre.songs << self unless genre.songs.include?(self)
    # Assign that genre to myself
    @genre = genre
  end


  def initialize
    save
  end



  # def self.find_by_name(name)
  #   puts "Found the definition in the song class"
  # end

end
#(song belongs to artist)
#(song belongs to genre)
