class CreateRsvps < ActiveRecord::Migration[5.2]
  def change
    create_table :rsvps do |t|
      t.belongs_to :hangout, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
