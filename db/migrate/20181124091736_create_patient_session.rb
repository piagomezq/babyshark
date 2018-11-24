class CreatePatientSession < ActiveRecord::Migration
  def change
    create_table :patient_sessions do |t|
      t.references :aid_request, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
    end
  end
end
