class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :studentID
      t.string :contact
      t.string :keyword
      t.time :time
      t.boolean :isfound
      t.text :description

      t.timestamps
    end
  end
end
