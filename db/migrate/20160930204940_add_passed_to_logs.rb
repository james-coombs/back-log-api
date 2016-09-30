class AddPassedToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :passed, :boolean, null: false, default: false
  end
end
