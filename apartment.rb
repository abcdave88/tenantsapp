require "pry"

class Apartment

  attr_accessor :tenants

  def initialize(options={})
    @price=options[:price]
    @occupied=options[:occupied]
    @balcony=options[:balcony]
    @sqft=options[:sqft]
    @bedrooms=options[:bedrooms]
    @bathrooms=options[:bathrooms]
    @tenants=options[:tenants] || []
  end

  def is_occupied?(apartment)
    binding.pry
    if apartment.tenants == true
      apartment.occupied == true
    end
  end

   
end

