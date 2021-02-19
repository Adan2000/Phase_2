class User < ApplicationRecord
has_many :exercises 
has_many :workouts, through: :exercises
has_secure_password
end
