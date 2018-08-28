class Book < ApplicationRecord
  validates :title, :author, :description, :url,  presence: true
end
