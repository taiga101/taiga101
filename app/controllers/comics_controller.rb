class ComicsController < ApplicationController
    def index
        @comics = Comic.all
    end

    def new
        @comic = Comic.new
      end
    
      def create
        comics = Comics.new(comics_params)
        if comics.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def comics_params
        params.require(:comics).permit(:カラム名, :カラム名, :カラム名)
      end
    
end
