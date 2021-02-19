class CreateTeeboxes < ActiveRecord::Migration[6.0]
  def change
    create_table :teeboxes do |t|
      t.references :golfcourse, null: false, foreign_key: true
      t.string :color
      t.integer :distance
      t.integer :slope
      t.float :rating

      t.timestamps
    end
  end
end
