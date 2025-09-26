class CreateCollegeNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table :college_notifications do |t|
      t.string :message

      t.timestamps
    end
  end
end
