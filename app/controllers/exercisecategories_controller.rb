class ExercisecategoriesController < ApplicationController

    
 def index
    @exercise_categories = ExerciseCategory.all 
 end

 def show
    @exercise_category = ExerciseCategory.find(params[:id])
 end


 
end
