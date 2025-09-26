class ResultsController < ApplicationController
    def show
        @result=Result.find(params[:id])
    end     
        def search
    end
    def show_by_id
        #  byebug
         @student = Student.find_by(id: params[:student_id])
         if @student
            @results = @student.results
            render :show
            else
                flash[:alert] = "Student ID not found!"
                redirect_to results_search_path
        end
    end
end   
