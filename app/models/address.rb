class Address < ApplicationRecord
  belongs_to :person, dependent: :destroy
  validates_presence_of :country, :person_id
end
