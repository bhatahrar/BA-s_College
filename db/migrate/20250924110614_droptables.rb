class Droptables < ActiveRecord::Migration[8.0]
  def change
    drop_table :users
    drop_table :applications
  end
end
