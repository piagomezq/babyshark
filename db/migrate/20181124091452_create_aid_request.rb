class CreateAidRequest < ActiveRecord::Migration
  def change
    create_table :aid_requests do |t|
      t.text :description
      t.references :specialty, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
    end
  end
end
