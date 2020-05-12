class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @top_butlers = Butler.all.first(6) 
    @butlers = Butler.all
  end
  def search
    @butlers = Butler.where("name LIKE ?", "%#{params[:keyword]}%" )
  end
end
