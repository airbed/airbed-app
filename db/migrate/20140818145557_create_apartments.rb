class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :title
      t.text :description
      t.string :city
      t.integer :people

      t.timestamps
    end
  end
end
