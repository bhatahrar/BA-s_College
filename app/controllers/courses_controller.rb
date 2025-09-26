class CoursesController < ApplicationController
    def show 
        @course=Course.find(params[:id])
    end
    def search
      @courses=Course.all
    end
    def show_by_id
        @course=Course.find_by(name: params[:name].upcase)
        if @course
            render :show
          else
            flash[:alert] = "Course not Available!"
            redirect_to courses_search_path
          end

    end
end 