# frozen_string_literal: true

class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.string :description
      t.boolean :fatality

      t.timestamps
    end
  end
end
