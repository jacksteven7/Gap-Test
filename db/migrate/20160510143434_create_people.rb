class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, :null => false , :limit=> 254
      t.string :job, :null => true
      t.text :bio
      t.string :gender
      t.date :birthdate
      t.string :picture, :null => true

      t.timestamps null: false
    end
  end
end
