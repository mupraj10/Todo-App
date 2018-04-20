class TodoItemsController < ApplicationController

    def create
        @todo_list = TodoList.find(params[:todo_list_id])
        redirect_to @todo_list
    end

    private 

    def set_todo_list
        @todo_list = TodoList.find(params[:todo_list_id])
    end

    def todo_items.params
        params[:todo_item].permit(:content)
    end

end

