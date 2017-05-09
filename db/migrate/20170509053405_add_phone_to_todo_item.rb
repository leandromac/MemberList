class AddPhoneToTodoItem < ActiveRecord::Migration
  def change
    add_column :todo_items, :phone, :string
  end
end
