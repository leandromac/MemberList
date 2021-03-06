class TodoItemsController < ApplicationController
    before_action :set_todo_list 
    before_action :set_todo_item, only: [:show, :edit, :update, :destroy]

    def create
       @todo_item = @todo_list.todo_items.create(todo_item_params)
       redirect_to @todo_list
    end
    
    def destroy
        if @todo_item.destroy
            flash[:success] = "Category item was deleted."
        else
            flash[:error] = "Category could not be deleted."
        end
        redirect_to @todo_list
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        respond_to do |format|
          if @todo_list_todo_item.update(todo_list.todo_item_params)
            format.html { redirect_to @todo_list_todo_item, notice: 'Category was successfully updated.' }
            format.json { render :show, status: :ok, location: @todo_list_todo_item }
          else
            format.html { render :edit }
            format.json { render json: @todo_item.errors, status: :unprocessable_entity }
          end
        end
    end
    
    def complete
    @todo_item.update_attribute(:completed_at, Time.now)
    redirect_to @todo_list, notice: "Member completed"
    end

    private
    
    def set_todo_list
       @todo_list = TodoList.find(params[:todo_list_id])
    end
    
    def set_todo_item
        @todo_item = @todo_list.todo_items.find(params[:id])
    end
    
    def todo_item_params
        params[:todo_item].permit(:content, :email, :url, :phone, :location, :skill)
    end
    
end
