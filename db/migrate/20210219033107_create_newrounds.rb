class CreateNewrounds < ActiveRecord::Migration[6.0]
  def change
    create_table :newrounds do |t|
      t.references :golfcourse, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :score
      

      t.timestamps
    end
  end
end
