class WorkoutsController < ApplicationController

    def index
        @workouts = Workout.all
    end

    def show
        @workout = Workout.find(params[:id])
    end

    def new
        @workout = Workout.new
    end

    def create
        @workout = Workout.new(workout_params)
        if @workout.save
            redirect_to @workout
        else 
            render :new
        end
    end

    def edit
        @workout = Workout.find(params[:id])
    end

    def update
        @workout = Workout.find(params[:id])
        @workout.update(workout_params)
        if @workout.save 
            redirect_to @workout
        else 
            render :edit
        end
    end

    def destroy
        @workout = Workout.find(params[:id])
        @workout.destroy
        flash[:notice] = "Workout has been deleted"
        redirect_to workout_path 
    end

    private

    def workout_params
        params.require(:workout).permit(:plan, :name, :intensity, :sets, :reps, :categories, :workouts)
    end
    
end
