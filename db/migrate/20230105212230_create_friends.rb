class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :you
      t.string :hate
      t.string :frist_name
      t.string :last_name
      t.string :wyjasniam_bo
      t.string :dlaczego_nienawidzisz

      t.timestamps
    end
  end
end
