class ResumeController < ApplicationController

  def index
    @show_nav = true
    @jobs = Job.all
    @roles = MyRole.all
    @skills = Skill.all
  end

end