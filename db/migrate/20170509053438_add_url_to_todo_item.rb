class AddUrlToTodoItem < ActiveRecord::Migration
  def change
    add_column :todo_items, :url, :string
  end
end
