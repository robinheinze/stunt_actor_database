class AddJoinTable < ActiveRecord::Migration
  def change
    create_table :people_skills do |t|
      t.column :person_id, :int
      t.column :skill_id, :int
    end

    add_column :skills, :slug, :string
  end
end
