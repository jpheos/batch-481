require_relative '../views/sessions_view'

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @customer_view = SessionsView.new
  end

  def sign_in

    demande un username
    demande un password

    cherche l employee qui a ce username
      @employee_repository.find_by_username(username)
      => nil
        => Wrong credentials
        return sign_in
      => instance employee
        on vérifie que le mdp rentrer == celui de employee
        => oui
          return employee
        => non
          Wrong credentials
          return sin_in
  end
end
