class MoviesController < ApplicationController
  before_action :find_movie, only: [:edit, :update, :show, :destroy]

  # to display a collection of movies
  def index
    @movies = Movie.all # here Movie is singular for it is a model.
  end

  # to display a form create a movie. new goes to create it means  it is related with create
  def new
    @movie = Movie.new  # here it is singular for new form is created for new movie, one movie
  end

  #the logic to store the new data into the database
  def create
    @movie = Movie.new(movie_params)
    @movie.save   # (for the save goes with instance variable we can not use is with Movie model.) params have all the access to the data in the database.for we don't have any data in the database for create 
    if @movie.save
      #if returns true. Do stuff 
      redirect_to movies_path  # there is no create page in the database so we need to render or redirect the info. in this we are redircting the info to the index page. (@movie.id) do this if you want to  redirect the to the show page.
    else
      #if returns false. Do stuff
      render :new # it displays the form again with the info that user gave in a new page
      #redirect_to new_movie_path we can do this but it will give a new form that is empty. user have to type everything again. so render is prefered.
    end    
  end

  # to display a form to update an existing movie
  def edit
      # if this didn't work it will display an error 404. (page not found) error by default.
  end

  # the logic to alter the data of an existing movie in the database. it overwrite the existing data with the update.
  def update
    if @movie.update(movie_params) # here update is built in methods of rails that is deffined bu ActiceRecord. 
      redirect_to movies_path
    else
      render :edit
    end
  end

  # to display data from a specific movie
  def show
  end

  # to remove data from the database
  def destroy
    @movie.destroy  
    redirect_to movies_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :released_at)  # strong params that prevents the user to push or insert the data other than title and released_at info.
  end 

  private 
  def find_movie
    @movie = Movie.find(params[:id]) #singular of movie that is @movie not @movies.
  end 

end