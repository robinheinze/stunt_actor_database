class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.column :name, :string
    end
  end
end
