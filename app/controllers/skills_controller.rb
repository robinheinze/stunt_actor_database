class SkillsController < ApplicationController

  def index
    @skill = Skill.new
    @skills = Skill.all
    render 'index.html.erb'
  end

  def create
    @skill = Skill.new(params[:skill])
    @skill.slug = @skill.name.parameterize
    if @skill.save
      flash[:notice] = "Congratulations, #{@skill.name} has been added!"
      redirect_to("/skills")
    else
      render('index.html.erb')
    end
  end

  def edit
    @skill = Skill.find_by(:slug => params[:slug])
    render('edit.html.erb')
  end

  def update
    @skill = Skill.find_by(:slug => params[:slug])
    if @skill.update(params[:skill])
      flash[:notice] = "The skill was updated!"
      redirect_to("/skills")
    else
      render('edit.html.erb')
    end
  end

  def destroy
    @skill = Skill.find_by(:slug => params[:slug])
    @skill.destroy
    flash[:notice] = "The skill was deleted."
    redirect_to("/skills")
  end
end
