class Addage < ActiveRecord::Migration[8.0]
  def change
    add_column :applications,:age,:integer
  end
end
