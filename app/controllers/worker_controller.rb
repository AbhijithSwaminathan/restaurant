class WorkerController < ApplicationController
    before_action :require_login

    def index
        @workers = Worker.all
    end

    def new
        @worker = Worker.new
    end

    def show
        @workers = Worker.find(params[:id])
    end

    def create
        @worker = Worker.new(worker_params)
        if(@worker.save)
            redirect_to @worker
        else
            render 'new'
        end
    end

    def edit
        @worker = Worker.find(params[:id])
    end

    def update
        @worker = Worker.find(params[:id])

        if(@worker.update(worker_params))
            redirect_to @worker
        else
            render 'edit'
        end
    end

    def destroy
        @worker = Worker.find(params[:id])
        @worker.destroy

        redirect_to worker_index_path
    end

    private def worker_params
        params.require(:worker).permit(:name,  :age, :address, :gender, :role, :wage)
    end
end
