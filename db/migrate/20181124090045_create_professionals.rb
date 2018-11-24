class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :first_name
      t.string :last_name
      t.references :specialty, index: true, foreign_key: true
      t.references :organization, index: true, foreign_key: true
    end
  end
end
