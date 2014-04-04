class AddProfilePicColumn < ActiveRecord::Migration
  def change
    add_column :people, :profile_picture, :string
  end
end
