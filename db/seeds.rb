# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Exercise.destroy_all
Workout.destroy_all
Category.destroy_all


Workout.create(plan: "Monday's Workout")
Workout.create(plan: "Tuesday's Workout")
Workout.create(plan: "Wednesday's Workout")
Workout.create(plan: "Thursday's Workout")
Workout.create(plan: "Friday's Workout")
Workout.create(plan: "Saturday's Workout")


Exercise.create(name: "bench", intensity: "hard", sets: 4, reps: 10, user: User.all.sample, workout: Workout.all.sample)
Exercise.create(name: "squat", intensity: "moderate", sets: 4, reps: 8, user: User.all.sample, workout: Workout.all.sample)
Exercise.create(name: "hard", intensity: "hard", sets: 4, reps: 8, user: User.all.sample, workout: Workout.all.sample)
Exercise.create(name: "pushups", intensity: "light", sets: 4, reps: 15, user: User.all.sample, workout: Workout.all.sample)

Category.create(name: "cardio")
Category.create(name: "HIT")
Category.create(name: "bodybuilding")
Category.create(name: "powerlifting")

ExerciseCategory.create(exercise: Exercise.all.sample, category: Category.all.sample)
ExerciseCategory.create(exercise: Exercise.all.sample, category: Category.all.sample)
ExerciseCategory.create(exercise: Exercise.all.sample, category: Category.all.sample)
ExerciseCategory.create(exercise: Exercise.all.sample, category: Category.all.sample)
ExerciseCategory.create(exercise: Exercise.all.sample, category: Category.all.sample)


