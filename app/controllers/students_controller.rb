class StudentsController < ApplicationController

  def allcomments
     @student = Student.find_by(id: params[:id])
    @comments = Comment.where(student_id: @student.id).order('created_at DESC')
  end
  
  def index
    search = params['search']
    
    if search
      students_by_name = Student.where("name LIKE '%#{search}%'") 
      students_by_grade = Student.where("grade LIKE '%#{search}%'")
      @students = students_by_name + students_by_grade
    
      if @students.count == 1
        student = @students.first
        redirect_to "/students/#{ student.id }"
      else
        render 'index'
      end
      
    else
    @students = Student.all
      render 'index'
    end
    
  end
  

  def show
    @student = Student.find_by(id: params[:id])
    @comments = Comment.where(student_id: @student.id).order('created_at DESC')
  end

  def new
  end

  def create
    @student = Student.new
    @student.name = params[:name]
    @student.grade = params[:grade]
    @student.mathAccom = params[:mathAccom]
    @student.elaAccom = params[:elaAccom]
    @student.sciAccom = params[:sciAccom]
    @student.socstudAccom = params[:socstudAccom]
    @student.transitionAccom = params[:transitionAccom]
    @student.parentContact = params[:parentContact]
    @student.caseContact = params[:caseContact]
    @student.counselorContact = params[:counselorContact]
    @student.clinContact = params[:clinContact]
    @student.behaviorAll = params[:behaviorAll]
    @student.behaviorSpecial = params[:behaviorSpecial]
    @student.behaviorTrack = params[:behaviorTrack]
    @student.mathLvl = params[:mathLvl]
    @student.mathGoal = params[:mathGoal]
    @student.writingLvl = params[:writingLvl]
    @student.writingGoal = params[:writingGoal]
    @student.functionalLvl = params[:functionalLvl]
    @student.functionalGoal = params[:functionalGoal]

    if @student.save
      redirect_to "/students/#{ @student.id }"
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.name = params[:name]
    @student.grade = params[:grade]
    @student.mathAccom = params[:mathAccom]
    @student.elaAccom = params[:elaAccom]
    @student.sciAccom = params[:sciAccom]
    @student.socstudAccom = params[:socstudAccom]
    @student.transitionAccom = params[:transitionAccom]
    @student.parentContact = params[:parentContact]
    @student.caseContact = params[:caseContact]
    @student.counselorContact = params[:counselorContact]
    @student.clinContact = params[:clinContact]
    @student.behaviorAll = params[:behaviorAll]
    @student.behaviorSpecial = params[:behaviorSpecial]
    @student.behaviorTrack = params[:behaviorTrack]
    @student.mathLvl = params[:mathLvl]
    @student.mathGoal = params[:mathGoal]
    @student.writingLvl = params[:writingLvl]
    @student.writingGoal = params[:writingGoal]
    @student.functionalLvl = params[:functionalLvl]
    @student.functionalGoal = params[:functionalGoal]

    if @student.save
      redirect_to "/students/#{ @student.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy


    redirect_to "/students"
  end
  
  def home
    
  end
end
