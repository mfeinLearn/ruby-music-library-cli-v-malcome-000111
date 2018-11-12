module Findable # a set of behaviors
  # Module code here
  def find_by_name(name)
      self.all.find{|an_object|an_object.name == name}
  end

  def find_or_create_by_name(name)
      # a_Class=self.class
      find_by_name(name) || create(name)
  end
end
