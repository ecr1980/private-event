class AddEventRefToInvites < ActiveRecord::Migration[7.0]
  def change
    add_column :invites, :event_id, :integer
  end
end
