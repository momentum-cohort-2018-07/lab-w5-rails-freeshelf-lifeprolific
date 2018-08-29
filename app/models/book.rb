class Book < ApplicationRecord
  validates :title, :author, :description, :url, :checked_out, presence: true
  validates_associated :user
  belongs_to :user
end
