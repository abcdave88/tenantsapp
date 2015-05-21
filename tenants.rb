require "pry"

class Tenants

  def initialize(options={})
    @name = options[:name]
    @age = options[:age]
    @sex = options[:sex]
    @apartment = options[:apartment] || nil 
  end

end

binding.pry
nil   