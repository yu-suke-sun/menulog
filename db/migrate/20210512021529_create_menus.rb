class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.date :date,           null: false
      t.integer :category_id,    null: false
      t.string :saki,            null: false
      t.text :sakitext,       null: false
      t.string :zen,            null: false
      t.text :zentext,       null: false
      t.string :zatu,            null: false
      t.text :zatutext,       null: false
      t.string :nimo,            null: false
      t.text :nimotext,       null: false
      t.string :yaki,            null: false
      t.text :yakitext,       null: false
      t.string :ai,            null: false
      t.text :aitext,       null: false
      t.string :syo,            null: false
      t.text :syotext,       null: false
      t.string :deza,            null: false
      t.text :dezatext,       null: false

      t.timestamps
    end
  end
end
