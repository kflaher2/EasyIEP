class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find_by(id: params[:id])
    @comment = Comment.where(teacher_id: @teacher.id).order('created_at DESC')
    @enrollment = Enrollment.where(teacher_id: @teacher.id)
  end

  def new
  end

  def create
    @teacher = Teacher.new
    @teacher.name = params[:name]
    @teacher.email = params[:email]
    @teacher.subject = params[:subject]

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
