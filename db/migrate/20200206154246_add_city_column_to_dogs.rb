class AddCityColumnToDogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :dogs, :city
  end
end
