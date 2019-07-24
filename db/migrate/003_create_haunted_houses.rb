# Create your haunted_houses migration here
class CreateHauntedHouses < ActiveRecord::Migration[4.2]
    def change 
        create_table :haunted_houses do |x|
            x.string :name 
            x.string :location 
            x.string :theme
            x.float :price 
            x.boolean :family_friendly
            x.datetime :opening_date 
            x.datetime :closing_date 
            x.text :description 
        end 
    end 
end 