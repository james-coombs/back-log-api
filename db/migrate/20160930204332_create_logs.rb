class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :title
      t.string :platform
      t.string :players
      t.string :stage
      t.string :notes

      t.timestamps null: false
    end
  end
end
