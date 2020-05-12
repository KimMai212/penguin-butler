class ButlersController < ApplicationController
  skip_before_action :authenticate_user!, only: :search
<<<<<<< HEAD
=======

>>>>>>> master
  def search
    @butlers = Butler.all
  end
end
