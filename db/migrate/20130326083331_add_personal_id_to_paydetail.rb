class AddPersonalIdToPaydetail < ActiveRecord::Migration
  def change
    add_column :paydetails, :personal_id, :string
  end
end
