class RemovePassedFromLogs < ActiveRecord::Migration
  def change
    remove_column :logs, :passed, :boolean
  end
end
