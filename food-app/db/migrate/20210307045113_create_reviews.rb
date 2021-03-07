class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :restaurant_name
      t.string :food_name
      t.string :food_review 
      t.string :service_review
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
