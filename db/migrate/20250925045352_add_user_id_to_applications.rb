class AddUserIdToApplications < ActiveRecord::Migration[8.0]
  def change
    add_column :applications, :user_id, :integer
  end
end
