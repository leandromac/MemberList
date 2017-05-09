class AddLocationToTodoItem < ActiveRecord::Migration
  def change
    add_column :todo_items, :location, :string
  end
end
