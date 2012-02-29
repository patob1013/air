class Airport < ActiveRecord::Base
  
  validates :code, :presence => true, 
                   :length => { :is => 3 }

  validates :city, :presence => true
  
end
