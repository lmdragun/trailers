class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :photo_url
      t.timestamps
      t.references :movie
      t.integer :movie_id
    end
  end
end
