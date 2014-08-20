class AddUserRefToApartments < ActiveRecord::Migration
  def change
    add_reference :apartments, :user, index: true
  end
end
