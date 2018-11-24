class CreatePatient < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :rut
      t.string :address
      t.string :phone
    end
  end
end
