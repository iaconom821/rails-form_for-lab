class StudentsController < ApplicationController
    def create
        Student.create(params.require(:student).permit(:first_name, :last_name))

        redirect_to show
    end

    def show
        @show_student = Student.last 
    end

    def new
        @student = Student.new 
    end

    def edit
        @ed_student = Student.find(params[:id])
    end

    def update
        Student.find(params[:id]).update(params.require(:student).permit(:first_name, :last_name))

        redirect_to show 
    end
end