class CreatePlaydates < ActiveRecord::Migration[5.2]
  def change
    create_table :playdates do |t|
      t.integer :user_id
      t.integer :dog_id
      t.date :date
      t.time :time
    end
  end
end
