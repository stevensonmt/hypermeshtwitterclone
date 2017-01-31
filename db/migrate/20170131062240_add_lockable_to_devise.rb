class AddLockableToDevise < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :failed_attempts, :integer, default: 0, null: false # Only if lock strategy is :failed_attempts
    add_column :users, :locked_at, :datetime
  end

  def down
    remove_columns :users, :failed_attempts, :locked_at
    # remove_columns :users, :unconfirmed_email # Only if using reconfirmable
  end
end
