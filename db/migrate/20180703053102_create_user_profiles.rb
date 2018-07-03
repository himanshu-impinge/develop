class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.references :user
      t.string :primary_mobile
      t.string :secondary_mobile
      t.string :primary_address
      t.string :image
      t.string :facebook
      t.string :twitter
      t.string :google
      t.integer :gender
      t.integer :age

      t.timestamps
    end
  end
end
