# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

class CreateMovies < ActiveRecord::Migration[7.0]
    def change
      create_table :movies do |t|
        t.string :title
        t.integer :year_released
        t.string :rated
        t.integer :person_id
      end
    end
  end

  class CreatePeople < ActiveRecord::Migration[7.0]
    def change
      create_table :people do |t|
        t.string :name
      end
    end
  end
  
  class CreateRoles < ActiveRecord::Migration[7.0]
    def change
      create_table :people do |t|
        t.integer :movie_id
        t.integer :person_id
        t.string :character_name
      end
    end
  end
