class Book < ApplicationRecord
  validates :title, :author, :description, :url, presence: true
  validates_associated :user
  belongs_to :user
end
