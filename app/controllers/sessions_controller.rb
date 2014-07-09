class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    u = Teacher.find_by(email: params['email'])
    if u && u.authenticate(params['password'])
      session[:teacher_id] = u.id
      redirect_to "/teachers/#{ u.id }"
    else
      redirect_to '/sessions/new', notice: "There was a problem signing you in, please try again"
    end
  end
  
  def destroy
    reset_session
    redirect_to '/sessions/new', notice: "You have successfully signed out"
  end
  
  
end