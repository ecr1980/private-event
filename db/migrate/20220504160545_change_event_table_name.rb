class ChangeEventTableName < ActiveRecord::Migration[7.0]
  def change
    rename_column :Events, :when, :happens
  end
end
