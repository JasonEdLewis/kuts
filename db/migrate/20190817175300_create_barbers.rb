class CreateBarbers < ActiveRecord::Migration[5.2]
  def change
    create_table :barbers do |t|
      t.string :name
      t.string :specialty
      t.integer :hours
      t.string :location

      t.timestamps
    end
  end
end
