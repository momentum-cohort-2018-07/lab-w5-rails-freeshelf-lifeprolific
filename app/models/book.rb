class Book < ApplicationRecord
  validates :title, :author, :description, :url,  presence: true
  belongs_to :user
end
