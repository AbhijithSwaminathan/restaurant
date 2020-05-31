class Worker < ApplicationRecord
    validates :name, presence: true
    validates :gender, presence: true
    validates :role, presence: true
    validates :address, presence: true
    validates :age, numericality: { only_integer: true, :greater_than_or_equal_to => 0.0  } 
    validates :wage, numericality:{:greater_than_or_equal_to => 0.0}
end
