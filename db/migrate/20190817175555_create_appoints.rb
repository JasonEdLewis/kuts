class CreateAppoints < ActiveRecord::Migration[5.2]
  def change
    create_table :appoints do |t|
      t.belongs_to :client, foreign_key: true
      t.belongs_to :barber, foreign_key: true
      t.integer :time
      t.string :style

      t.timestamps
    end
  end
end
