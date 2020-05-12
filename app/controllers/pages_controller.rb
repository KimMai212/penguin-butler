class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @top_batlers = Butler.all.first(6) 
    @batlers = Butler.all
  end
  def search
    @butlers = Butler.where("name LIKE ?", "%#{params[:keyword]}%" )
  end
end
