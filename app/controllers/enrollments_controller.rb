class EnrollmentsController < ApplicationController

  def index
    @enrollments = Enrollment.all
  end

  def show
    @enrollment = Enrollment.find_by(id: params[:id])
  end

  def new
  end

  def create
    @enrollment = Enrollment.new
    @enrollment.subject = params[:subject]
    @enrollment.period = params[:period]
    @enrollment.teacher_id = params[:teacher_id]
    #     Student.find_by_name([student.name].id)
    @enrollment.student_id = params[:student_id]

    if @enrollment.save
      redirect_to "/teachers/#{ @enrollment.teacher_id }"
    else
      render 'new'
    end
  end

  def edit
    @enrollment = Enrollment.find_by(id: params[:id])
  end

  def update
    @enrollment = Enrollment.find_by(id: params[:id])
    @enrollment.subject = params[:subject]
    @enrollment.period = params[:period]
    @enrollment.teacher_id = params[:teacher_id]
    @enrollment.student_id = params[:student_id]

    if @enrollment.save
      redirect_to "/enrollments/#{ @enrollment.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @enrollment = Enrollment.find_by(id: params[:id])
    @enrollment.destroy


    redirect_to "/enrollments"
  end
end
