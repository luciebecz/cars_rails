class Car < ApplicationRecord
  # all the things that can go inside of our model(helper methods in irb run rails c):
  # validations:second line of defense, for bad input
  # callbacks 
  # associations
  # instance methods
  # class methods 

  def self.makes
    ['Jeep', 'Toyota', 'Ford', 'Chevy']
  end

  validates_presence_of :make, :model, :year
  validates_inclusion_of :make, in: makes
  #now the only valid values for make are jeep toyota and ford
  
  # instance methods 
  def info
    "Car with make of #{make}, #{model}, was made in #{year} and is #{color}"
  end

  def make_model
    "#{make} #{model}"
  end


  #Class methods. Scope
  def self.by_year
    order(:year)
  end
  
end
