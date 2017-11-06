class AddIuguIdToSubscriptions < ActiveRecord::Migration[5.1]
  def change
    add_column :subscriptions, :iugu_id, :string
    add_index :subscriptions, :iugu_id
  end
end
