class Checkout < ActiveRecord::Base
  validates :phone_num, :numericality => true, :length => { :minimum => 10 }
  validates :last_name, :length => { :minimum => 2 }
  validates :first_name, :length => { :minimum => 2 }
  validates :address, :length => { :minimum => 5 }
  
  
end
