class AddAvatarToSubCategories < ActiveRecord::Migration[5.0]
  def up
    add_attachment :sub_categories, :avatar
  end

  def down
    remove_attachment :sub_categories, :avatar
  end
end
