class CreateHauntedHouses < ActiveRecord::Migration[4.2]
  
   def change
    create_table :haunted_houses do |t|
     t.string :name, :location, :theme, :description 
     t.boolean :family_friendly
     t.float :price
     t.timestamp :opening_date, :closing_date
   end
  end 
  
end 
