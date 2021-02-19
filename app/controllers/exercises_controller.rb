class ExercisesController < ApplicationController
    
 def index
    @exercises = current_user.exercises
 end

 def show
    @exercise = Exercise.find(params[:id])
 end

 def new
    @exercise = Exercise.new
 end

 def create
    @exercise = Exercise.create(exercise_params)
    if @exercise.valid?
      redirect_to user_path(@exercise.user)
   else
      flash[:notice] = "Invalid entry"
      redirect_to new_exercise_path
   end
 end

 def edit
    @exercise = Exercise.find(params[:id])
 end

 def update
    @exercise = Exercise.find(params[:id])
    @exercise.update(exercise_params)
    if @exercise.save
        redirect_to exercises_path
        flash[:notice] = "Your exercise has been successfully updated!"
    else
        render :edit 
    end
 end

 def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    flash[:notice] = "Your exercise has been deleted."
    redirect_to exercises_path
 end

 private

 def exercise_params
    params.require(:exercise).permit(:name, :intensity, :sets, :reps, :user_id, :workout_id)
 end

end
