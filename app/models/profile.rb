class Profile < ApplicationRecord
  belongs_to :person
  validates_presence_of  :status, :gender, :person_id
  validates_uniqueness_of :person_id
end
