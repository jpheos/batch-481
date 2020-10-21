require_relative '../views/sessions_view'

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @sessions_view = SessionsView.new
  end



  # cherche l employee qui a ce username
  #   @employee_repository.find_by_username(username)
  #   => nil
  #     => Wrong credentials
  #     return sign_in
  #   => instance employee
  #     on vérifie que le mdp rentrer == celui de employee
  #     => oui
  #       return employee
  #     => non
  #       Wrong credentials
  #       return sin_in
  def sign_in
    username = @sessions_view.ask_username
    password = @sessions_view.ask_password
    employee = @employee_repository.find_by_username(username)

    if employee && employee.password == password
      employee
    else
      puts "Wrong credentials"
      sign_in
    end
  end
end
