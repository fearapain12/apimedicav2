class AddLocationIdToDoctor < ActiveRecord::Migration
  def change
    add_reference :doctors, :Location, index: true, foreign_key: true
  end
end
