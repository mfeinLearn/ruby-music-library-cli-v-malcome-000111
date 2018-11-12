class Genre
  # Builder Pattern
  # Mixin Pattern
  # Module Pattern
  extend Findable # Take all of the methods in the Findable module and add them
  extend Persistable::ClassMethods #=> the extended hook of the ClassMethods module will fire.
  extend Nameable::ClassMethods
  include Persistable::InstanceMethods
  attr_accessor :name, :songs # has many songs

  def self.all # Class Reader
    @@all
  end

  def initialize
    save
    @songs = []
  end

  def artists # It looks like a reader but its more complicated
    # a has many through
    @songs.collect{|s| s.artist}.uniq
  end



end
