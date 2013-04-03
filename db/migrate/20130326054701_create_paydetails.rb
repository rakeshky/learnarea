class CreatePaydetails < ActiveRecord::Migration
  def change
    create_table :paydetails do |t|
      t.string :pay_type
      t.string :price
      t.string :rating

      t.timestamps
    end
  end
end
