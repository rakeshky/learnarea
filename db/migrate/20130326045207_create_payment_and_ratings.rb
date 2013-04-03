class CreatePaymentAndRatings < ActiveRecord::Migration
  def change
    create_table :payment_and_ratings do |t|
      t.string :pay_type
      t.string :price
      t.string :rating

      t.timestamps
    end
  end
end
