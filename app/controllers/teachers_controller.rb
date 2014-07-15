class TeachersController < ApplicationController
  
  before_action :check_if_signed_in, only: ['show', 'edit', 'update', 'destroy']
  
  def check_if_signed_in
       if session[:teacher_id].to_i != params[:id].to_i
      redirect_to "/sessions/new"
    end
  end
  
  def index
    @teachers = Teacher.all
  end

   def allcomments
     @student = Student.find_by(id: params[:id])
     @teacher = Teacher.find_by(id: params[:id])
     @comments = Comment.where(teacher_id: @teacher.id).order('created_at DESC')
  end
  
  def show
    @teacher = Teacher.find_by(id: params[:id])
    @comments = Comment.where(teacher_id: @teacher.id).order('created_at DESC')
    @enrollments = Enrollment.where(teacher_id: @teacher.id)
    @students = Student.all
    filter = params['period']
    if filter
      @enrollmentsfilter = Enrollment.where(teacher_id: @teacher.id, period: filter)
    else
      @enrollmentsfilter= @enrollments
    end
 
  end

  def new
  end

  def create
    @teacher = Teacher.new
    @teacher.name = params[:name]
    @teacher.email = params[:email]
    @teacher.subject = params[:subject]
    @teacher.password = params[:password]
    @teacher.password_confirmation = params[:password_confirmation]

    if @teacher.save
      redirect_to "/teachers/#{ @teacher.id }"
    else
      render 'new'
    end
  end

  def edit
    @teacher = Teacher.find_by(id: params[:id])
  end

  def update
    @teacher = Teacher.find_by(id: params[:id])
    @teacher.name = params[:name]
    @teacher.email = params[:email]
    @teacher.subject = params[:subject]
    @teacher.password = params[:password]
    @teacher.password_confirmation = params[:password_confirmation]

    if @teacher.save
      redirect_to "/teachers/#{ @teacher.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @teacher = Teacher.find_by(id: params[:id])
    @teacher.destroy


    redirect_to "/teachers"
  end
end
