class ButlersController < ApplicationController
  skip_before_action :authenticate_user!, only: :search

  def search
    @butlers = Butler.all
  end
end
