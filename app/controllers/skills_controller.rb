class SkillsController < ApplicationController

  before_action :set_skill

  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
  end

  def update
    @skill.update(skill_params)
  end

  def destroy
    @skill.destroy
  end
  
  private

  def set_skill
    @skill = Skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:my_role_id, :name)
  end

end