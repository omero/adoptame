class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :company_id
      t.string :username
      t.string :name
      t.string :surname
      t.string :gender

      t.timestamps
    end
  end
end
