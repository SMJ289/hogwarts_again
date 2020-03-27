class ProfessorStudentsController <ApplicationController

  def index
    @professor_students = Professor.find(params[:professor_id]).students
  end

end
