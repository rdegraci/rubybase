class Student < ActiveRecord::Migration
  def change  
    create_table(:students) do |t|      
      t.string :name

      t.timestamps null: true
    end
  end
end
