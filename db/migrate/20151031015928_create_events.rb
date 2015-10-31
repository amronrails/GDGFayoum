class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :position
      t.datetime :time
      t.text :details
      t.string :place
      t.string :line2

      t.timestamps null: false
    end
    add_attachment :events, :image
    add_attachment :events, :image2
    add_attachment :events, :image3
    add_attachment :events, :image4

  end
end
