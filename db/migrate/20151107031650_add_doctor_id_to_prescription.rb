class AddDoctorIdToPrescription < ActiveRecord::Migration
  def change
    add_reference :prescriptions, :Doctor, index: true, foreign_key: true
  end
end
