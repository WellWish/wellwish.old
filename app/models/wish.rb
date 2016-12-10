class Wish < ApplicationRecord
  validates :title, :description, :criteria, presence: true

  belongs_to :user
end
