class Machine < ApplicationRecord
  validates_presence_of :location

  has_many :mahine_snacks
  has_many :snacks, through: :machines
  belongs_to :owner
end
