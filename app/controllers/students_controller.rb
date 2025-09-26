class StudentsController < ApplicationController
  def index
    @students=Student.all
  end
  # def new
  #   @student=Student.new
  #   @courses=Course.all  
  # end
  #   def create
  #     # byebug
  #     @student=Student.new(params.require(:student).permit(:name,:age,:phone))
  #     if @student.save
  #       @admission = Admission.new
  #       @admission.student= @student
  #       @admission.course_id = params[:student][:course_id]
  #       @admission.fee = rand(10000..50000)
  #       @admission.year_of_joining = Time.now.year
  #       @admission.save
        
  #       flash[:notice]= "Student and Admission Created Successfully!"
  #       redirect_to @student
  #     else
  #       @courses = Course.all 
  #       render :new
  #     end
  # end
  #   def show
  #     @student = Student.find(params[:id])
  #   end
  end