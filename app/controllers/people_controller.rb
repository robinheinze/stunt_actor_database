class PeopleController < ApplicationController

  def index
    @people = Person.all
    render('index.html.erb')
  end

  def new
    @person = Person.new
    render('new.html.erb')
  end

  def create
    @person = Person.new(params[:person])
    @person.slug = @person.name.parameterize
    if @person.save
      skills = params[:skills].nil? ? [] : params[:skills].map { |id| Skill.find(id)}
      skills.each { |skill| @person.skills << skill }
      flash[:notice] = "Congratulations, #{@person.name}! Your profile has been created. Welcome to Stunts Я Us!"
      redirect_to("/people/#{@person.slug}")
    else
      render('new.html.erb')
    end
  end

  def show
    @person = Person.find_by(:slug => params[:slug])
    render('show.html.erb')
  end

  def edit
    @person = Person.find_by(:slug => params[:slug])
    render('edit.html.erb')
  end

  def update
    @person = Person.find_by(:slug => params[:slug])
    if @person.update(params[:person])
      skills = params[:skills].nil? ? [] : params[:skills].map { |id| Skill.find(id)}
      @person.update(:skills => skills)
      flash[:notice] = "Your profile was updated!"
      redirect_to("/people/#{@person.slug}")
    else
      render('edit.html.erb')
    end
  end

  def destroy
    @person = Person.find_by(:slug => params[:slug])
    @person.destroy
    flash[:notice] = "Your profile was deleted. Thanks for trying Stunts Я Us!"
    redirect_to("/people")
  end
end
