class AddUserToSpells < ActiveRecord::Migration[5.2]
  def change
    add_reference :spells, :user, foreign_key: true
  end
end
