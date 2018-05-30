class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.references :user, foreign_key: true
      t.references :pqr, foreign_key: true
      t.string :action
      t.text :backup

      t.timestamps
    end
  end
end
