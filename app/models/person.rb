class Person < ApplicationRecord
  has_many :addresses
  has_one :profile
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_length_of :name , minimum: 2 , message: " it is too short"
end
