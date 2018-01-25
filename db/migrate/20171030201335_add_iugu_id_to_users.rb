# frozen_string_literal: true

class AddIuguIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :iugu_id, :string
  end
end
