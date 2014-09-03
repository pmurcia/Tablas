class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
  	@subject = Subject.find params[:id]
  end

  def new
  	@subject = Subject.new
  end

  def create
  	# binding.pry
  	@subject = Subject.create name:params[:subject][:name]

  	if @subject.save
  	  redirect_to action: 'index', controller: 'subjects'
  	else
  	  render 'new'
  	end
  end

  def update

  end

  def destroy

  end
end

