class AddCityColumnToDogSitter < ActiveRecord::Migration[5.2]
  def change
    add_reference :dog_sitters, :city
  end
end
