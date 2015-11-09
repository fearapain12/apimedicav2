class AddDoctorIdToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :Doctor, index: true, foreign_key: true
  end
end
