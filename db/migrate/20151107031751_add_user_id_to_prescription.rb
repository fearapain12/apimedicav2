class AddUserIdToPrescription < ActiveRecord::Migration
  def change
    add_reference :prescriptions, :User, index: true, foreign_key: true
  end
end
