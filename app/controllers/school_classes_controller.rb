class SchoolClassesController < ApplicationController
    def create
        SchoolClass.create(params.require(:school_class).permit(:title, :room_number))

        redirect_to show
    end

    def show
        @show_school_class = SchoolClass.last 
    end

    def new
        @school_class = SchoolClass.new
    end

    def edit
        @ed_school_class = SchoolClass.find(params[:id])
    end

    def update
        SchoolClass.find(params[:id]).update(params.require(:school_class).permit(:title, :room_number))

        redirect_to show 
    end

end
