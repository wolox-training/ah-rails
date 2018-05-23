class AddTimestampToBook < ActiveRecord::Migration[5.2]
  # ActiveRecord set created_at and updated_at with now() when these actions are performed
  def change
    add_column :books, :created_at, :datetime, null: false, default: ''
    add_column :books, :updated_at, :datetime, null: false, default: ''
  end
end
