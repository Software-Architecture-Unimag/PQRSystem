class CreatePqrFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :pqr_files do |t|
      t.string :url

      t.timestamps
    end
  end
end
