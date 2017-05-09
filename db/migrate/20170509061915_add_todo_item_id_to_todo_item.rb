class AddTodoItemIdToTodoItem < ActiveRecord::Migration
  def change
    add_column :todo_items, :todo_item_id, :integer
  end
end
