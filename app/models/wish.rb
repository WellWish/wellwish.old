class Wish < ApplicationRecord
  validates :title, :description, :criteria, presence: true

  belongs_to :user
  has_one :location

  accepts_nested_attributes_for :location
end
