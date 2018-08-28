class User < ApplicationRecord
  validates :username, uniqueness: true
  validates :username, presence: true
end
