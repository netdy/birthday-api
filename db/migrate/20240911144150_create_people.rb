class CreatePeople < ActiveRecord::Migration[7.2]
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthdate
      t.references :user, null: false, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
