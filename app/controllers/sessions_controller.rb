class SessionsController <ApplicationController
  def create
     binding.pry
    render text: request.env["omniauth.auth"]
  end
end
