class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :intensity
      t.integer :sets
      t.integer :reps
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :workout, index: true, foreign_key: true
      t.timestamps
    end
  end
end
