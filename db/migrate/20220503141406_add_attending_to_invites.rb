class AddAttendingToInvites < ActiveRecord::Migration[7.0]
  def change
    add_column :invites, :attending, :boolean
  end
end
