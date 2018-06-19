class User < ApplicationRecord
  has_secure_password
  has_many :event_plannings
  has_many :bills
end
