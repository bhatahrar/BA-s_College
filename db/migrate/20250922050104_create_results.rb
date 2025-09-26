class CreateResults < ActiveRecord::Migration[8.0]
  def change
    create_table :results do |t|
      t.references :student, null: false, foreign_key: true
      t.string :subject
      t.integer :semester
      t.decimal :marks

      t.timestamps
    end
  end
end
