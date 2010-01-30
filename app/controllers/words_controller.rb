class WordsController < ApplicationController
  def index
    @word = Word.new
    @words = Word.all
  end
  
  def show
    @word = Word.find(params[:id])
  end
  
  def new
    @word = Word.new
  end
  
  def create
    @word = Word.new(params[:word])
    if @word.save
      flash[:notice] = "Successfully created word."
      respond_to do |format|
        format.html { redirect_to @word }
        format.js
      end
    else
      render :action => 'new'
    end
  end
  
  def edit
    @word = Word.find(params[:id])
  end
  
  def update
    @word = Word.find(params[:id])
    if @word.update_attributes(params[:word])
      flash[:notice] = "Successfully updated word."
      redirect_to @word
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @word = Word.find(params[:id])
    @word_id = @word.id
    @word.destroy
    flash[:notice] = "Successfully destroyed word."
    respond_to do |format|
      format.html { redirect_to words_url }
      format.js
    end
  end
end
