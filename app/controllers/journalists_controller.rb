class JournalistsController < ApplicationController
  def index
    @journalists = Journalist.all
  end

  def create
    @journalist = Journalist.new
  end

  def new
    @journalist = Journalist.new(journalist.params)
    if @journalist.save
      redirect_to journalists_index_path
    else
      render :new
  end
end

private

  def journalist_params
  params.require(:journalist).permit(:title, :content)
  end
end
