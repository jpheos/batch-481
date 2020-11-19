class MoviesController < ApplicationController
  # ACTIVE RECORD
  # def index
  #   if params[:query].blank?
  #     @movies = Movie.all
  #   else
  #     sql_query = <<~SQL
  #       movies.title @@ :query OR
  #       movies.syllabus @@ :query OR
  #       directors.first_name @@ :query OR
  #       directors.last_name @@ :query
  #     SQL
  #     @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
  #   end
  # end

  # PG_SEARCH
  def index
    if params[:query].blank?
      @movies = Movie.all
    else
      @movies = Movie.search_by_title_and_syllabus(params[:query])
    end
  end
end





