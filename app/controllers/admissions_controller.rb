class AdmissionsController < ApplicationController
    def show
        @admission=Admission.find(params[:id])
    end
    def search
    end
    def show_by_id
        # byebug
              @admission = Admission.find_by(id:params[:admission_id])
              if @admission
                render :show
              else
                flash[:alert] = "Admission ID not found!"
                redirect_to admissions_search_path
              end
    end          
end
