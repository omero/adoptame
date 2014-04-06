class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
    Company.create!(name: "Adoptame.MX", url: "http://adoptame.mx")
  end
end
