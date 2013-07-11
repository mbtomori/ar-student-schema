require_relative '../../db/config'

class Student < ActiveRecord::Base
  
  attr_reader :age

  validates_uniqueness_of :email
  validates :email, presence: true, format: { with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i} 
  validates_length_of :phone, :in => 9..32
  validates_numericality_of :age, :greater_than => 5

  def name
    first_name + " " + last_name
  end

  def age
    now = Date.today
    age = now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end
# implement your Student model here
end
