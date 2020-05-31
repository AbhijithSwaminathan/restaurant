class DishController < ApplicationController
    before_action :require_login

    def index
        @dishes = Dish.all
    end

    def new
        @dish = Dish.new
        @cat = ['Indian','Condinantal','Italian','Breads','Refreshers']
    end
    
    

    def create
        @dish = Dish.new(dish_params)
        @dish.isavailable = true
        if(@dish.save)
            redirect_to dish_index_path
        else
            render 'new'
        end
    end

    def edit
        @dish= Dish.find(params[:id])
        @cat = ['Indian','Condinantal','Italian','Breads','Refreshers']
    end

    def update
        @dish = Dish.find(params[:id])
        if(@dish.update(dish_params))
            redirect_to dish_index_path
        else
            render 'edit'
        end
    end

    def destroy
        @dish = Dish.find(params[:id])
        @dish.destroy

        redirect_to dish_index_path
    end

    private def dish_params
        params.require(:dish).permit(:name,  :price, :description, :image, :category)
    end
    
end
