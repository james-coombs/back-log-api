class AddUserToLog < ActiveRecord::Migration
  def change
    add_reference :logs, :user, index: true, foreign_key: true
  end
end
