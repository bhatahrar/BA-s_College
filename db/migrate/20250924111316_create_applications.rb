class CreateApplications < ActiveRecord::Migration[8.0]
  def change
    create_table :applications do |t|
      t.string :applicant_name
      t.string :email
      t.string :phone
      t.references :course, null: false, foreign_key: true
      t.string :status,default: "Pending"

      t.timestamps
    end
  end
end
