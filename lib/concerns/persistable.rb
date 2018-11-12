module Persistable
  module  InstanceMethods
    def save # instance method
      self.class.all << self
    end
  end

  module ClassMethods
    def self.extended(base) # Hook
      puts "#{base} has been extended by #{self}"
      # Song has been extended by Persistable::ClassMethods
      base.class_variable_set(:@@all, [])
      
    end

    def reset_all # class method
      self.all.clear
    end

    def  count # class method
      self.all.size
    end
  end

end
