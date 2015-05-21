require "pry"

class Building

  attr_accessor :apartments 

  def initialize(options={})
    @floors = options[:floors]
    @address = options[:address]
    @num_of_apartments = options[:num_of_apartments]
    @age = options[:age]  
    @concierge = options[:concierge]
    @apartments = options[:apartments] || []
  end

  def total_income(apartments)
    apartments.price.reduce(:+)
  end



end

binding.pry
nil   


