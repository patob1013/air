class Flight < ActiveRecord::Base
  
  belongs_to :departure_airport, 
             :class_name => 'Airport'
             
  belongs_to :arrival_airport, 
             :class_name => 'Airport'

  validates :number, :uniqueness => true

  def arrives_at
    return departs_at + (distance * 10)
  end
  
end
