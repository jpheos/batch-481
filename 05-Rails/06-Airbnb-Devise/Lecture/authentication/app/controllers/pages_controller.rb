class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def legal_terms

  end
end