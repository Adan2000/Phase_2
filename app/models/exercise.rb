class Exercise < ApplicationRecord
    
    belongs_to :user
    belongs_to :workout 
    has_many :exercise_categories, dependent: :destroy
    has_many :categories, through: :exercise_categories


 end 

 