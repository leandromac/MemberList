class AddSkillToTodoItem < ActiveRecord::Migration
  def change
    add_column :todo_items, :skill, :string
  end
end
