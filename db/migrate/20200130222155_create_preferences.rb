class CreatePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.boolean :reddit
      t.boolean :news
      t.boolean :stocks
      t.boolean :weather
      t.boolean :spotify
      t.boolean :calender
      t.boolean :twitter
      t.boolean :sleepCycle
      t.boolean :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
