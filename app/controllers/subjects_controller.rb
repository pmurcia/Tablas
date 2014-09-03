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

  def edit
	@subject = Subject.find params[:id]
  end

  def update
  	@subject = Subject.find params[:id]
  	@subject.update name: params[:subject][:name]
  	
  	if @subject.valid?
  	  redirect_to action: 'index', controller: 'subjects'
  	else
  	  render 'edit'
  	end
  end

  def destroy

  end
end

