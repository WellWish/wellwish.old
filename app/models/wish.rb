class Wish < ApplicationRecord
  validates :title, :description, :criteria, presence: true
end
