class CreateHangouts < ActiveRecord::Migration[5.2]
  def change
    create_table :hangouts do |t|
      t.string :title
      t.string :date
      t.string :category
      t.text :description
      t.string :city
      t.string :venue
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
