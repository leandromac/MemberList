class AddEmailToTodoItem < ActiveRecord::Migration
  def change
    add_column :todo_items, :email, :string
  end
end
