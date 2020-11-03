class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.string :nickname, null: false
      t.integer :age
      t.date :birthday
      t.string :selfintro
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
