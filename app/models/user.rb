class User < ApplicationRecord
  validates :name, :phone, :role, :district, :taluka, presence: true
end
