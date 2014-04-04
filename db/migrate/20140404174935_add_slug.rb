class AddSlug < ActiveRecord::Migration
  def change
    add_column :people, :slug, :string
  end
end
