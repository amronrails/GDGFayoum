class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :position
      t.string :job_title
      t.string :line2
      t.text :description

      t.timestamps null: false
    end
    add_attachment :members, :avatar
    add_attachment :members, :avatar2
  end
end
