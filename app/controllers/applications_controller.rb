
    class ApplicationsController < ApplicationController
        before_action :require_login
      
        def index
            if current_user.role == "admin"
              @applications = Application.all
            else
              @applications = current_user.applications
            end
        end
      
        def new
          @application=Application.new
        end
      
        def create
          @application = current_user.applications.new(application_params)
          if @application.save
            redirect_to applications_path, notice: "Application submitted!"
          else
            render :new
          end
        end
        
      
        def approve
          app = Application.find(params[:id])
          app.update(status: "Approved")
      
          student = Student.new(name: app.applicant_name, phone: app.phone,age:app.age)
          if student.save
            admission = Admission.new
            admission.student = student
            admission.course_id = app.course_id
            admission.fee = rand(10000..50000)
            admission.year_of_joining = Time.now.year
            admission.save
          end
      
          redirect_to applications_path, notice: "Application approved, student and admission created."
        end
      
        def reject
          app = Application.find(params[:id])
          app.update(status: "Rejected")
          redirect_to applications_path, notice: "Application rejected."
        end
      
        private
        def application_params
          params.require(:application).permit(:applicant_name, :email, :phone, :course_id, :age)
        end        
      end