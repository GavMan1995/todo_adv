class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item
      t.text :comment

      t.belongs_to :list

      t.timestamps null: false
    end
  end
end
