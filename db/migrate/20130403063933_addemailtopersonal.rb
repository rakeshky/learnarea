class Addemailtopersonal < ActiveRecord::Migration
  def up
  	add_column :personals ,:email,:string
  end

  def down
  end
end
