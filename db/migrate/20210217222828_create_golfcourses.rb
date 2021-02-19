class CreateGolfcourses < ActiveRecord::Migration[6.0]
  def change
    create_table :golfcourses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.float :latitude
      t.float :longitude
      t.string :website
      t.string :teetimes
      t.integer :holes
      t.integer :par

      t.timestamps
    end
  end
end
