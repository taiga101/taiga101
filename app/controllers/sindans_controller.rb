class SindansController < ApplicationController
    def index
    end

    def new
        @sindans = Sindan.new
    end

    def show
        @sindans = Sindan.find_by(id: params[:id])
    end

    def create
        sindan = Sindan.new(sindan_params)
        if sindan.save
            flash[:notice] = "診断が完了しました"
            redirect_to sindan_path(sindan.id)
        else
            redirect_to :action => "new"
        end
    end
  
    private
    def sindan_params
        params.require(:sindan).permit(:question1, :question2, :question3, :question4)
    end
end
