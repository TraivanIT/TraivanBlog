class Traivan < ApplicationRecord
  has_secure_password
  has_many :posts
end
