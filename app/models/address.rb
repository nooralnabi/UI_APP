class Address < ApplicationRecord
  belongs_to :person
  validates_presence_of :country, :person_id
end
