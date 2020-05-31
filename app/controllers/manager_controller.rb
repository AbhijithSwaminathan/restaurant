class ManagerController < ApplicationController
    def index
        @dishes = Dish.all
        @cat = ['Indian','Condinantal','Italian','Breads','Refreshers','South Indian','Chinese','Thai','Spanish','Japanese','French','Desserts']
    end
    
end
