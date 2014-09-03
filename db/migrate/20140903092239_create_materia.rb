class CreateMateria < ActiveRecord::Migration
  def change
    create_table :materia do |t|
      t.string :name
      t.timestamps
    end
  end
end
