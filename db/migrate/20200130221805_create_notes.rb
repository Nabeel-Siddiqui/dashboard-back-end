class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :text_content
      t.string :create_date
      t.string :update_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
