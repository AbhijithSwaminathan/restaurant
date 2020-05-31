class ManagerController < ApplicationController
    def index
        @dishes = Dish.all
        @cat = ['Indian','Condinantal','Italian','Breads','Refreshers']
    end
    
end
