class AddEmailidToPersonal < ActiveRecord::Migration
  def change
    add_column :personals, :email, :string
  end
end
