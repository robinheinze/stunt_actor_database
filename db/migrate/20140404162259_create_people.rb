class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.column :name, :string
      t.column :gender, :string
      t.column :weight, :float
      t.column :eye_color, :string
      t.column :hair_color, :string
      t.column :shoe_size, :string
      t.column :physique, :string
      t.column :waist, :float
      t.column :inseam, :float
      t.column :role, :string

      t.timestamps
    end
  end
end
