class CreatePersonals < ActiveRecord::Migration
  def change
    create_table :personals do |t|
      t.string :name
      t.string :gender
      t.string :city

      t.timestamps
    end
  end
end
