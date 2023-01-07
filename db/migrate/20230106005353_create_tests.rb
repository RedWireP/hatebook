class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :folder
      t.string :marka

      t.timestamps
    end
  end
end
