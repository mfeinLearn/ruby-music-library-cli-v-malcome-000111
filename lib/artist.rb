require 'pry'
class Artist
  extend Findable # Take all of the methods in the Findable module and add them
  extend Persistable::ClassMethods #=> the extended hook of the ClassMethods module will fire.
  extend Nameable::ClassMethods
  include Persistable::InstanceMethods
  attr_accessor :name, :songs


  def self.all # Class Reader
    @@all
  end

  def initialize
    save
  end



end
