class ChangeWheelCol < ActiveRecord::Migration
  def up
    rename_column :refinery_wheels, :type, :rim_type
  end

  def down
    rename_column :refinery_wheels, :rime_type, :type
  end
end
